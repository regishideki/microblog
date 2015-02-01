class AddIndexToSluggedTitle < ActiveRecord::Migration
  def change
    add_index :posts, :slugged_title, unique: true
  end
end
