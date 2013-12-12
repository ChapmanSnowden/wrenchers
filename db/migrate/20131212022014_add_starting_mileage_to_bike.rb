class AddStartingMileageToBike < ActiveRecord::Migration
  def change
    add_column :bikes, :starting_mileage, :integer
  end
end
