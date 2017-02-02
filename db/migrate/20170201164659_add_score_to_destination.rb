class AddScoreToDestination < ActiveRecord::Migration[5.0]
  def change
    add_column :destinations, :score, :integer
  end
end
