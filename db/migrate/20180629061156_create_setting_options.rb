class CreateSettingOptions < ActiveRecord::Migration
  def change
    create_table :setting_options do |t|
	  t.string :option_name
	  t.boolean :is_showed
      t.timestamps null: false
    end
  end
end
