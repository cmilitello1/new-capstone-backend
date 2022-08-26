class CreateSeekings < ActiveRecord::Migration[7.0]
  def change
    create_table :seekings do |t|
      t.integer :user_id
      t.integer :max_ppl
      t.datetime :date_time_wanted

      t.timestamps
    end
  end
end
