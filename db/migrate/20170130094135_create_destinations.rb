class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :description
      t.decimal :lat
      t.decimal :lng
      t.string :default_img
      t.string :img1
      t.string :img2
      t.timestamps
    end
  end
end
