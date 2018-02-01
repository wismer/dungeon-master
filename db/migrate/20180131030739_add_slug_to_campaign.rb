class AddSlugToCampaign < ActiveRecord::Migration[5.1]
  def change
    change_table :campaigns do |t|
      t.string :url_slug
    end
  end
end
