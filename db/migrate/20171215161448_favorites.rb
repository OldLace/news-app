class Favorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :url, null: false
      t.string :url_to_image, null: false
      t.string :published_at, null: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps null: false
  end

  add_index :favorites, [:user_id, :title]
  end
end
