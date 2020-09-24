class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name,             null: false
      t.integer :category_id,     null: false
      t.integer :style_id,        null: false
      t.text :text
      t.text :url
      t.string :brewery_name
      t.integer :brewery_country_id
      t.timestamps
    end
  end
end
