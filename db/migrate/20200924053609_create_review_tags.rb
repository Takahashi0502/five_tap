class CreateReviewTags < ActiveRecord::Migration[6.0]
  def change
    create_table :review_tags do |t|
      t.integer :review_id, null: false, foreign_key: true
      t.integer :tag_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
