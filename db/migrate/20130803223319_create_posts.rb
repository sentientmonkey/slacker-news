class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :url, null: false
      t.text :description
      t.integer :author_id, null: false
      t.boolean :published, null: false, default: true
      t.datetime :published_at
      t.timestamps
    end
  end
end
