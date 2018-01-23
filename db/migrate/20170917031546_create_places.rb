class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.references :campaign
      t.string :name
      t.integer :day

      t.timestamps
    end
  end
end
