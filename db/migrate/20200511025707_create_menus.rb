class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.boolean :active, default: true
      t.string :description

      t.timestamps
    end
  end
end
