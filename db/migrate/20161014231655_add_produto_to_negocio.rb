class AddProdutoToNegocio < ActiveRecord::Migration
  def change
    add_reference :negocios, :produto, index: true, foreign_key: true
  end
end
