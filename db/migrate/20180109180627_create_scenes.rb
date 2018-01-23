class CreateScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :scenes do |t|
      t.references :campaigns
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
