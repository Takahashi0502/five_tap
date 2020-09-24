class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.name :string,             null: false
      t.category_id :integer,     null: false
      t.style_id    :integer,     null: false
      t.text :text
      t.url :text
      t.brewery_name :string
      t.brewery_country_id :integer
      t.timestamps
    end
  end
end
