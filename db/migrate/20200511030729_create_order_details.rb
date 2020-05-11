class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.references :menu_item, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :total

      t.timestamps
    end
  end
end
