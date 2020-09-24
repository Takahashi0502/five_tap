class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.following :references, null: false, foreign_key: true
      t.follower :references,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
