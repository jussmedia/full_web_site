class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string  :title
      t.text    :body
      t.string  :published_by
      t.boolean :published

      t.timestamps
    end
  end
end
