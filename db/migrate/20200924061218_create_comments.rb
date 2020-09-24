class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.content :text, null: false
      t.user :references, null: false, foreign_key: true
      t.review :references, null: false, foreign_key: true
      t.timestamps
    end
  end
end
