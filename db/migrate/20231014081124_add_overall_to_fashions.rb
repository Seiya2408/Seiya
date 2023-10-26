class AddOverallToFashions < ActiveRecord::Migration[6.1]
  def change
    add_column :fashions, :overall, :integer
  end
end
