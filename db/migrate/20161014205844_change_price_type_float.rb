class ChangePriceTypeFloat < ActiveRecord::Migration
  def change
  	change_column :produtos, :price, 'float USING CAST(price AS float)'
  end
end
