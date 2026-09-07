require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "the blog can be opened" do
    get posts_path
    assert_response :success
  end
end
