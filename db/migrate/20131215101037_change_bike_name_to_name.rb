class ChangeBikeNameToName < ActiveRecord::Migration
  def change
		rename_column :bikes, :bike_name, :name
  end
end
