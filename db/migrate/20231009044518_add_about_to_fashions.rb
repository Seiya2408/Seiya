class AddAboutToFashions < ActiveRecord::Migration[6.1]
  def change
    add_column :fashions, :about, :text
  end
end
