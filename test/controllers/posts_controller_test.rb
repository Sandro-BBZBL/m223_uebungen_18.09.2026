require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "guests see published posts but no drafts" do
    get posts_path
    assert_response :success
    assert_includes response.body, posts(:one).title
    assert_not_includes response.body, posts(:draft).title
    get post_path(posts(:draft))
    assert_response :not_found
  end

  test "the author sees their own draft" do
    sign_in_as users(:one)
    get post_path(posts(:draft))
    assert_response :success
  end

  test "a guest cannot create posts" do
    assert_no_difference "Post.count" do
      post posts_path, params: { post: { title: "Test", body: "Text" } }
    end
    assert_redirected_to new_session_path
  end

  test "the author comes from the session" do
    sign_in_as users(:one)
    assert_difference "Post.count", 1 do
      post posts_path, params: { post: { title: "Neu", body: "Text", user_id: users(:two).id } }
    end
    assert_equal users(:one), Post.last.user
  end

  test "the owner can update and another author cannot" do
    sign_in_as users(:one)
    patch post_path(posts(:one)), params: { post: { title: "Mein neuer Titel" } }
    assert_response :redirect
    assert_equal "Mein neuer Titel", posts(:one).reload.title
    patch post_path(posts(:two)), params: { post: { title: "Fremder Titel" } }
    assert_includes [403, 404], response.status
    assert_equal "Bens öffentlicher Beitrag", posts(:two).reload.title
  end

  test "invalid input has feedback and changes nothing" do
    sign_in_as users(:one)
    patch post_path(posts(:one)), params: { post: { title: "" } }
    assert_response 422
    assert_equal "Annas öffentlicher Beitrag", posts(:one).reload.title
  end
end
