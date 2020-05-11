class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.references :menu, null: false, foreign_key: true
      t.string :description
      t.decimal :price
      t.boolean :available
      t.integer :stock

      t.timestamps
    end
  end
end
