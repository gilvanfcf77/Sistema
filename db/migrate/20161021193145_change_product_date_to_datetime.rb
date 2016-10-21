class ChangeProductDateToDatetime < ActiveRecord::Migration
  def change
  	change_column :negocios, :data, :datetime
  end
end
