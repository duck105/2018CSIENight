class RenameEventOrderToPiority < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :order, :priority
  end
end
