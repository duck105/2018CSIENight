class RenameModel < ActiveRecord::Migration[5.1]
  def change
    rename_table :sponsers, :sponsors
  end
end
