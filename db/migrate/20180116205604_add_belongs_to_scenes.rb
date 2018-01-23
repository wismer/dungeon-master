class AddBelongsToScenes < ActiveRecord::Migration[5.1]
  def change
    change_table :scenes do |t|
      t.rename :campaigns_id, :campaign_id
    end
  end
end
