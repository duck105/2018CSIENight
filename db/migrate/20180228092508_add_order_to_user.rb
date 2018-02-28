class AddOrderToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :order, :integer
  end
end
