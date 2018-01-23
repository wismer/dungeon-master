class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name

      t.timestamps
    end

    create_table :characters do |t|
      t.references :player, foreign_key: true
      t.string :name
      t.integer :level
      t.integer :strength
      t.integer :constitution
      t.integer :intelligence
      t.integer :dexterity
      t.integer :charisma
      t.integer :wisdom

      # secondary stats
      t.string :trained_skills, array: true
      t.integer :max_hp
      t.integer :current_hp
      t.boolean :is_npc, default: false

      t.timestamps
    end
  end
end
