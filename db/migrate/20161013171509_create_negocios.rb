class CreateNegocios < ActiveRecord::Migration
  def change
    create_table :negocios do |t|
      t.string :produto
      t.string :tipo
      t.integer :quantidade
      t.integer :codigo
      t.date :data

      t.timestamps null: false
    end
  end
end
