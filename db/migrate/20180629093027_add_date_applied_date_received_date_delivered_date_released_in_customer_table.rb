class AddDateAppliedDateReceivedDateDeliveredDateReleasedInCustomerTable < ActiveRecord::Migration
  def up
  	add_column :customers, :date_applied, :datetime, :null => true
  	add_column :customers, :date_received, :datetime, :null => true
  	add_column :customers, :date_delivered, :datetime, :null => true
  	add_column :customers, :date_released, :datetime, :null => true
  end
  def down
  	remove_columns :customers, :date_applied
  	remove_columns :customers, :date_received
  	remove_columns :customers, :date_delivered
  	remove_columns :customers, :date_released
  end
end
