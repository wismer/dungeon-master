class Character < ApplicationRecord
  belongs_to :player
  has_one :race


  def summary
    {
      id: self.id,
      character_class_id: CharacterClass.select(:name).find(self.character_class_id).name,
      name: self.name,
      race_id: self.race_id
    }
  end
end
