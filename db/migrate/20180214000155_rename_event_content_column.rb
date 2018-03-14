class RenameEventContentColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :content, :introduction
  end
end
