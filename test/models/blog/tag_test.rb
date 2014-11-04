require "test_helper"

describe Blog::Tag do
  let(:tag) { Blog::Tag.new }

  it "must be valid" do
    tag.must_be :valid?
  end
end

# == Schema Information
#
# Table name: blog_tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
