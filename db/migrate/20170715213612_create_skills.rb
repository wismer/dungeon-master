class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.references :ability

      t.timestamps
    end
  end
end
