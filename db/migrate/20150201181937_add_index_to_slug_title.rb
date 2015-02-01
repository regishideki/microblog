class AddIndexToSlugTitle < ActiveRecord::Migration
  def change
    add_index :posts, :slug_title, unique: true
  end
end
