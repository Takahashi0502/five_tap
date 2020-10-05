class RenameFollowingColumnToRelationships < ActiveRecord::Migration[6.0]
  def change
    rename_column :relationships, :following, :following_id
    rename_column :relationships, :follower, :follower_id
  end
end
