class ChangeTypeColumnInTours < ActiveRecord::Migration[5.0]
  def change
    rename_column :tours, :type, :tour_type
  end
end
