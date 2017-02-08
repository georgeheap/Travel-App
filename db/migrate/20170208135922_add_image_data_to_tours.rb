class AddImageDataToTours < ActiveRecord::Migration[5.0]
  def change
    add_column :tours, :image_data, :text
  end
end
