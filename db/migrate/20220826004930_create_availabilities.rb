class CreateAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :availabilities do |t|
      t.integer :user_id
      t.date :date
      t.string :time_range

      t.timestamps
    end
  end
end
