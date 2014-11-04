class Blog::Tag < ActiveRecord::Base
  has_many :taggings
  has_many :articles, through: :taggings

  def to_s
    name
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
