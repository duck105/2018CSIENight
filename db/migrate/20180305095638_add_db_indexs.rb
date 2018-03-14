class AddDbIndexs < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :department_id
  end
end
