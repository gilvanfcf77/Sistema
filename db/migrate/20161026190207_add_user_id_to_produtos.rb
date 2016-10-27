class AddUserIdToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :user_id, :integer
  end
end
