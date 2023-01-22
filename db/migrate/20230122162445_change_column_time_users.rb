class ChangeColumnTimeUsers < ActiveRecord::Migration[7.0]
  def change
    change_column(:users, :best_time, :float)
    change_column_default :users, :best_time, from: '', to: 10000
  end
end
