class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :image
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
