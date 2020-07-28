class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :log_id
      t.integer :quantity

      t.timestamps
    end
  end
end
