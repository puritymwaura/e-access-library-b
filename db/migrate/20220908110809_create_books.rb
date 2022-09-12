class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.integer :price
      t.integer :author_id
      t.integer :customer_id
    end
  end
end
