class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :name
      t.string :price
      t.text :description
      t.integer :amount
      t.string :picture
      t.string :code

      t.timestamps null: false
    end
  end
end
