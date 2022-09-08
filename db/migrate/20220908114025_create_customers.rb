class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
  create_table :customers do|t|
    t.string :name
    t.string :age
    t.string :preference
  end
  end
end