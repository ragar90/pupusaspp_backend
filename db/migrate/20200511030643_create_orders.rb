class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :client_name
      t.string :address
      t.boolean :pickup, default: false
      t.decimal :total
      t.string :status

      t.timestamps
    end
  end
end
