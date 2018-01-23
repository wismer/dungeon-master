Types::CharacterType = GraphQL::ObjectType.define do
  name "Character"

  implements GraphQL::Relay::Node.interface

  global_id_field :id

  field :name, !types.String
  field :updated_at, !types.String
  field :created_at, !types.String
  field :player_id, !types.String

  # primary
  field :strength, !types.Integer
  field :wisdom, !types.Integer
  field :constitution, !types.Integer
  field :dexterity, !types.Integer
  field :charisma, !types.Integer
  field :intelligence, !types.Integer

  # secondary
  field :trained_skills, [!types.String]
  field :max_hp, !types.Integer
  field :current_hp, !types.Integer
end
