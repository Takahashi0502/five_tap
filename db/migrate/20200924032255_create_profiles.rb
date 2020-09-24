class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.favorite_beer :string
      t.twitter_link :text
      t.info :text
      t.user :references, null: false, foreign_key: true
      t.timestamps
    end
  end
end
