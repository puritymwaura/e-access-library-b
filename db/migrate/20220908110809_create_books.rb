class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.integer :cost
      t.integer :customer_id
      t.string :book_id
      t.integer :genre_id
    end
  end
end
