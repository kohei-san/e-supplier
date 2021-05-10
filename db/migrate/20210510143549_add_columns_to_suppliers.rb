class AddColumnsToSuppliers < ActiveRecord::Migration[6.0]
  def change
    add_column :suppliers, :address, :string
    add_column :suppliers, :latitude, :float
    add_column :suppliers, :longitude, :float
    change_column_null :suppliers, :profile, true
  end
end
