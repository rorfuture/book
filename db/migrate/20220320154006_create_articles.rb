class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
