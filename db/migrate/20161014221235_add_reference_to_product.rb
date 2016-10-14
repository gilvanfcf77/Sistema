class AddReferenceToProduct < ActiveRecord::Migration
  def change
  	add_reference :produtos, :negocios
  end
end
