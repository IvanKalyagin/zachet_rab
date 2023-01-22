class CreateActionTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :action_times do |t|
      t.float :gen_time, default: 1000
      t.integer :user_id

      t.timestamps
    end
    add_index :action_times, :id
  end
end
