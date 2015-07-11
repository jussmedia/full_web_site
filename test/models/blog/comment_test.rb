require "test_helper"

describe Blog::Comment do
  let(:comment) { blog_comments :one }

  it "must be valid" do
    comment.must_be :valid?
  end

  it "should have a reference to post" do
    comment.post.wont_be :nil?
  end
end

# == Schema Information
#
# Table name: blog_comments
#
#  id          :integer          not null, primary key
#  author_name :string(255)
#  body        :text
#  post_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#  reply_to_id :integer
#
# Indexes
#
#  index_blog_comments_on_post_id  (post_id)
#
