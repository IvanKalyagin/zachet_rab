class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :time_best, :float, default: 0.0
  end
end
