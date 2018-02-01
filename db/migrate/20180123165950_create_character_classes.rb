class CreateCharacterClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :character_classes do |t|
      t.string :name

      t.timestamps
    end

    change_table :characters do |t|
      t.references :character_class, foreign_key: true
    end
  end
end
