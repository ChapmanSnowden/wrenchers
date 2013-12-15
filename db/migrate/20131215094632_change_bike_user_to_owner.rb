class ChangeBikeUserToOwner < ActiveRecord::Migration
  def change
		rename_column :bikes, :user_id, :owner_id
  end
end
