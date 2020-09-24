class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.integer :following, null: false
      t.integer :follower,  null: false
      t.timestamps
    end
  end
end
