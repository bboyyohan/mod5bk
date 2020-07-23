class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.datetime :date
      t.integer :water
      t.integer :mood
      t.string :note

      t.timestamps
    end
  end
end
