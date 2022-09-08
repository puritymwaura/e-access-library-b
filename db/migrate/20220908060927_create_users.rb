class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :contact
      t.text :book_borrowed

      t.timestamps
    end
  end
end