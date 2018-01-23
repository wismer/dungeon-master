class FixAssocScenes < ActiveRecord::Migration[5.1]
  def change
    change_table :scenes do |t|
      t.remove :campaign_id
      t.references :campaign, index: true
    end
  end
end
