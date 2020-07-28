class CreateSleeps < ActiveRecord::Migration[6.0]
  def change
    create_table :sleeps do |t|
      t.integer :log_id
      # t.integer :quantity
      t.time :start_time
      t.time :end_time


      # t.timestamps
    end
  end
end
