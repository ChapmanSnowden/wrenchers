class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.belongs_to :user
      t.string :bike_name
      t.integer :current_mileage
      t.integer :oil_change_interval
      t.integer :valve_check_interval
      t.integer :chain_lube_interval

      t.timestamps
    end
  end
end
