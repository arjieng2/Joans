class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name_of_client
      t.string :trade_name
      t.string :kind_of_receipt
      t.string :tin
      t.string :rdo_bir
      t.string :size
      t.integer :qty
      t.string :ply
      t.float :unit_price
      t.float :amount
      t.string :contact_person
      t.string :contact_number
      t.integer :jo_num
      t.text :remarks
      t.timestamps :date_applied, null: true
      t.timestamps :date_received, null: true
      t.timestamps :date_delivered, null: true
      t.timestamps :date_released, null: true
      t.integer :status
      
      t.timestamps null: false
    end
  end
end

