class CreateUserTours < ActiveRecord::Migration[5.0]
  def change
    create_table :user_tours do |t|
      t.references :user_id
      t.references :tour_id
      t.references :trip_id
      t.timestamps
    end
  end
end
