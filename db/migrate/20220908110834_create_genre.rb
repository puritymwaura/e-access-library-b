class CreateGenre < ActiveRecord::Migration[6.1]
  def change
    create_table :genre do |t|
      t.string :horror 
      t.string :romance
      t.string :sci_fi
      t.string :fiction
    end
  end
end
