class FixColumnNameInTrips < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :destination_id_id, :destination_id
    rename_column :trips, :user_id_id, :user_id
    add_column :trips, :destination, :string
  end
end
