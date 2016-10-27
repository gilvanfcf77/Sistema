class RemoveProdutoIdFromNegocios < ActiveRecord::Migration
  def change
    remove_column :negocios, :produto_id, :integer
  end
end
