class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.text :body
      t.references :user, index: true
      t.references :article, index: true

      t.timestamps
    end
  end
end
