class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.user :references, null: false, foreign_key: true
      t.beer :references, null: false, foreign_key: true
      t.timestamps
    end
  end
end
