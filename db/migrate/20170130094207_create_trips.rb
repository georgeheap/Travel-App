class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.references :destination_id
      t.references :user_id
      t.date :from_date
      t.date :to_date
      t.timestamps
    end
  end
end
