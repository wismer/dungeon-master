Mutations::CreateCharacter = GraphQL::Relay::Mutation.define do
  name "CreateCharacter"

  input_field :characterName, !types.String
  input_field :race, !types.String
  input_field :characterClass, !types.String

  return_field :id, !types.ID
  return_field :character_class_id, !types.ID
  return_field :name, types.String
  return_field :race_id, !types.ID
  
  resolve -> (obj, args, ctxt) {
    character = Character.create(
      name: args[:characterName],
      race_id: args[:race],
      character_class_id: args[:characterClass],
      player_id: 1
    )

    character.save!
    character.summary
  }
end