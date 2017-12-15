class ReadLater < ActiveRecord::Migration[5.1]
  def change
    create_table :readlater do |t|
      t.string :author, null: false
      t.string :source_id, null: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps null: false
    end

    add_index :readlater, [:user_id, :author]
  end
end




