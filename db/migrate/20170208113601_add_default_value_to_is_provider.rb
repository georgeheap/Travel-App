class AddDefaultValueToIsProvider < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :is_provider, :boolean, :default => false
  end

  def down
    change_column :users, :is_provider, :boolean, :default => nil
  end
end
