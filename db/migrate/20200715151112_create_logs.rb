class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.integer :user_id
      # t.date :date
      # changed from t.datetime
      t.integer :water
      t.integer :mood
      # t.string :note

      t.string :title
      t.date :start

      # t.timestamps
    end
  end
end
