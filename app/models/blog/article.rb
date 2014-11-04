class Blog::Article < ActiveRecord::Base
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
