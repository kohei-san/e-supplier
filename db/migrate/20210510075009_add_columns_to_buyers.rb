class AddColumnsToBuyers < ActiveRecord::Migration[6.0]
  def change
    add_column :buyers, :address, :string
    add_column :buyers, :latitude, :float
    add_column :buyers, :longitude, :float
    change_column_null :buyers, :profile, true
  end
end
