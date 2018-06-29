# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "admin@gmail.com", username: "admin", password: "123456")


SettingOption.create(option_name: "Name Of Client", is_showed: true)
SettingOption.create(option_name: "Trade Name", is_showed: true)
SettingOption.create(option_name: "Kind Of Receipt", is_showed: true)
SettingOption.create(option_name: "TIN", is_showed: true)
SettingOption.create(option_name: "RDO/BIR", is_showed: true)
SettingOption.create(option_name: "Size", is_showed: true)
SettingOption.create(option_name: "QTY", is_showed: true)
SettingOption.create(option_name: "Ply", is_showed: true)
SettingOption.create(option_name: "Unit Price", is_showed: true)
SettingOption.create(option_name: "Amount", is_showed: true)
SettingOption.create(option_name: "Contact Person", is_showed: true)
SettingOption.create(option_name: "Contact Number", is_showed: true)
SettingOption.create(option_name: "JO#", is_showed: true)
SettingOption.create(option_name: "Remarks", is_showed: true)
SettingOption.create(option_name: "Date Applied", is_showed: true)
SettingOption.create(option_name: "Date Received", is_showed: true)
SettingOption.create(option_name: "Date Delivered", is_showed: true)
SettingOption.create(option_name: "Date Released", is_showed: true)
SettingOption.create(option_name: "Status", is_showed: true)
