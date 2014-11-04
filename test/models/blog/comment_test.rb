require "test_helper"

describe Blog::Comment do
  let(:comment) { Blog::Comment.new }

  it "must be valid" do
    comment.must_be :valid?
  end
end

# == Schema Information
#
# Table name: blog_comments
#
#  id          :integer          not null, primary key
#  author_name :string(255)
#  body        :text
#  article_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_blog_comments_on_article_id  (article_id)
#
