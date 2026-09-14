require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "a post needs a title and body" do
    post = posts(:one)
    post.title = ""
    post.body = ""

    assert_not post.valid?
    assert_includes post.errors[:title], "can't be blank"
    assert_includes post.errors[:body], "can't be blank"
  end
end
