class AddDonateToSponsor < ActiveRecord::Migration[5.1]
  def change
    add_column :sponsors, :donate, :integer
  end
end
