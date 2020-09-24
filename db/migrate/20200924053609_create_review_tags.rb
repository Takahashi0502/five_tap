class CreateReviewTags < ActiveRecord::Migration[6.0]
  def change
    create_table :review_tags do |t|
      t.review :references, null: false, foreign_key: true
      t.tag :references, null: false, foreign_key: true
      t.timestamps
    end
  end
end
