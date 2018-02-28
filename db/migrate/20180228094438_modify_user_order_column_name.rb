class ModifyUserOrderColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :order, :priority
  end
end
