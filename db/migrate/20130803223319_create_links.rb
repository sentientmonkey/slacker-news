class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url, null: false
      t.text :description
      t.integer :author_id, null: false
      t.boolean :published, null: false, default: true
      t.datetime :published_at
      t.timestamps
    end
  end
end
