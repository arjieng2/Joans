class HomepagesController < ApplicationController
  def index
  	@column_to_show = SettingOption.where("is_showed = true").order(:id)
  	values = [{:option => "Name Of Client", :option_value => :name_of_client},
		{:option => "Trade Name", :option_value => :trade_name},
		{:option => "Kind Of Receipt", :option_value => :kind_of_receipt},
		{:option => "TIN", :option_value => :tin},
		{:option => "RDO/BIR", :option_value => :rdo_bir},
		{:option => "Size", :option_value => :size},
		{:option => "QTY", :option_value => :qty},
		{:option => "Ply", :option_value => :ply},
		{:option => "Unit Price", :option_value => :unit_price},
		{:option => "Amount", :option_value => :amount},
		{:option => "Contact Person", :option_value => :contact_person},
		{:option => "Contact Number", :option_value => :contact_number},
		{:option => "JO#", :option_value => :jo_num},
		{:option => "Remarks", :option_value => :remarks},
		{:option => "Date Applied", :option_value => :date_applied},
		{:option => "Date Received", :option_value => :date_received},
		{:option => "Date Delivered", :option_value => :date_delivered},
		{:option => "Date Released", :option_value => :date_released},
		{:option => "Status", :option_value => :status}]
	@to_search = []
	@column_to_show.each do |column|
		@to_search.push values.detect{ |value| value[:option] == column.option_name }[:option_value]
	end
	@customers = Customer.select(@to_search.join(', '))

  end
  
  def users
  	
  end

  def update_settings
  	SettingOption.all.update_all(is_showed: false)
  	if params[:settings].present?
  		SettingOption.where("option_name in (?)", params[:settings][:options]).update_all(is_showed: true)
	end
    redirect_to settings_path
  end

  def settings
  	@settings = SettingOption.order(:id)
  	@temp_count = 1
  end
end


