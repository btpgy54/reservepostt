class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.date :date
      t.integer :club_id, null: false
      t.timestamps
    end
  end
end
