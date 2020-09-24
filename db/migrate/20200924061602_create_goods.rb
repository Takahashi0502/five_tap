class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.user :references, null: false, true
      t.comment :references, null: false, true
      t.timestamps
    end
  end
end
