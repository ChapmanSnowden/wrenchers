class RemoveCustomIntervals < ActiveRecord::Migration
  def change
		remove_column :bikes, :oil_change_interval
		remove_column :bikes, :valve_check_interval
		remove_column :bikes, :chain_lube_interval
  end
end
