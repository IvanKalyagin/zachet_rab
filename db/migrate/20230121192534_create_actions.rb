class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions do |t|
      t.integer :gen_results, default: 0
      t.integer :user_id

      t.timestamps
    end
    add_index :actions, :id
  end
end
