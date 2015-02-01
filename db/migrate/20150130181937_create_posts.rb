class CreatePosts < ActiveRecord::Migration
  
  def change
    create_table :posts do |t|
      t.string   "title",      null: false
      t.text     "message",    null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string   "slug_title", null: false
    end
  end
  
end
