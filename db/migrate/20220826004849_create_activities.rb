class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :ability_level
      t.string :activity_type

      t.timestamps
    end
  end
end
