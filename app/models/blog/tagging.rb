class Blog::Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :post
end

# == Schema Information
#
# Table name: blog_taggings
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  post_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_blog_taggings_on_post_id  (post_id)
#  index_blog_taggings_on_tag_id   (tag_id)
#
