require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def tests_adds_to_join_table
    post = Post.create! :title => 'foo'
    tag = post.tags.find_or_create_by_name 'bar'

    post.reload

    assert_includes post.tags, tag
    assert_includes tag.posts, post
  end
end
