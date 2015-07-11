class Blog::Comment < ActiveRecord::Base
  belongs_to :post

end

# == Schema Information
#
# Table name: blog_comments
#
#  id            :integer          not null, primary key
#  author_name   :string(255)
#  body          :text
#  post_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#  replied_to_id :integer
#
# Indexes
#
#  index_blog_comments_on_post_id  (post_id)
#
