class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
 create_table :purchases do|t|
    t.string :age
    t.string :book_title
    t.integer :customer_id
  end
  end
end
