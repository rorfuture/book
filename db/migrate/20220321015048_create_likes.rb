class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.references :likeable, polymorphic: true
      t.boolean :is_liked
      t.timestamps
    end
  end
end
