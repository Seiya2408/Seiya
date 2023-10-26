class CreateFashions < ActiveRecord::Migration[6.1]
  def change
    create_table :fashions do |t|
      t.string :name

      t.timestamps
    end
  end
end
