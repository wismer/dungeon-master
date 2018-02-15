class AddSettingToCampaign < ActiveRecord::Migration[5.1]
  def change
    add_column :campaigns, :setting, :string
    add_column :campaigns, :areas_of_interest, :string, array: true
  end
end
