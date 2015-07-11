class AddSelfJoinToComments < ActiveRecord::Migration
  def change
    change_table :blog_comments do |t|
      t.integer :parent_id # used for gem https://github.com/mceachen/closure_tree
    end
  end
end
