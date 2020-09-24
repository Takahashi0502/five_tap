class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.content :text ,null: false
      t.user :references, null: false, foreign_key: true
      t.beer :references, null: false, foreign_key: true
      t.tag :references
      t.timestamps
    end
  end
end
