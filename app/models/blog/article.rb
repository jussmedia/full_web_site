class Blog::Article < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    tags.join(", ")
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |name| Blog::Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end

end

# == Schema Information
#
# Table name: blog_articles
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  body         :text
#  published_by :string(255)
#  published    :boolean
#  created_at   :datetime
#  updated_at   :datetime
#
