class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.user :references, null: false, foreign_key: true
      t.review :references, null: false, foreign_key: true
      t.timestamps
    end
  end
end
