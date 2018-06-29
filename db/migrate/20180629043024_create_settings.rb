class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :jo
      t.string :name_of_client
      t.string :trade_name
      t.string :tin
      t.string :king_of_receipt
      t.string :rdo_bir
      t.integer :qty
      t.string :size
      t.string :ply
      t.string :contact_person
      t.string :contact_number
      t.float :unit_price
      t.string :amount
      t.text :remarks

      t.string :Status
      
      t.timestamps :date_received
      t.timestamps :date_applied
      t.timestamps :date_delivered
      t.timestamps :date_released

      t.timestamps null: false
    end
  end
end