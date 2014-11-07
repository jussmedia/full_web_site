require "test_helper"

describe Blog::Post do
  let(:post) { Blog::Post.new }

  it "must be valid" do
    post.must_be :valid?
  end
end

# == Schema Information
#
# Table name: blog_posts
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  body         :text
#  published_by :string(255)
#  published    :boolean
#  created_at   :datetime
#  updated_at   :datetime
#
