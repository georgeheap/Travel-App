class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :type
      t.text :description
      t.string :default_img
      t.string :img1
      t.string :img2
      t.decimal :lat
      t.decimal :lng
      t.string :day_of_week
      t.integer :destination_id
      t.timestamps
    end
  end
end
