require "test_helper"

describe Blog::Article do
  let(:article) { Blog::Article.new }

  it "must be valid" do
    article.must_be :valid?
  end
end

# == Schema Information
#
# Table name: blog_articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  published  :boolean
#  created_at :datetime
#  updated_at :datetime
#
