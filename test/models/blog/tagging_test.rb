require "test_helper"

describe Blog::Tagging do
  let(:tagging) { Blog::Tagging.new }

  it "must be valid" do
    tagging.must_be :valid?
  end
end

# == Schema Information
#
# Table name: blog_taggings
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  article_id :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_blog_taggings_on_article_id  (article_id)
#  index_blog_taggings_on_tag_id      (tag_id)
#
