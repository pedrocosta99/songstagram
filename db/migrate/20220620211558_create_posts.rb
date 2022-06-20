class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :artist
      t.string :album
      t.string :song
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
