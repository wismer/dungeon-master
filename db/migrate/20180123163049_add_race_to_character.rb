class AddRaceToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :race, foreign_key: true
  end
end
