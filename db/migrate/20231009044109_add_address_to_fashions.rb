class AddAddressToFashions < ActiveRecord::Migration[6.1]
  def change
    add_column :fashions, :address, :string
  end
end
