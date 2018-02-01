class AddCharacterToCampaign < ActiveRecord::Migration[5.1]
  def change
    change_table :characters do |t|
      t.references :campaign, foreign_key: true
    end
  end
end
