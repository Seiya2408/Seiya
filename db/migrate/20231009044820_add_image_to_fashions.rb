class AddImageToFashions < ActiveRecord::Migration[6.1]
  def change
    add_column :fashions, :image, :string
  end
end
