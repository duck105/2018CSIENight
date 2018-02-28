class AddFanpagelinkToSponsors < ActiveRecord::Migration[5.1]
  def change
    add_column :sponsors, :fanpagelink, :string
  end
end
