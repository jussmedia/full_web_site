class Blog::Comment < ActiveRecord::Base
  belongs_to :article
end

# == Schema Information
#
# Table name: blog_comments
#
#  id         :integer          not null, primary key
#  body       :text
#  user_id    :integer
#  article_id :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_blog_comments_on_article_id  (article_id)
#  index_blog_comments_on_user_id     (user_id)
#
