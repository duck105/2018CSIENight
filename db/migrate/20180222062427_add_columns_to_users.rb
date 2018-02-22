class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :motto, :text
    add_column :users, :role, :string
    add_column :users, :jobs, :text
    add_column :users, :department_id, :integer
  end
end
