class AddDetailsToFashions < ActiveRecord::Migration[6.1]
  def change
    add_column :fashions, :lat, :float
    add_column :fashions, :lng, :float
  end
end
