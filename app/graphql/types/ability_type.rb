Types::AbilityType = GraphQL::ObjectType.define do
  name "Ability"

  field :id, !types.String
  field :name, !types.String
  field :description, !types.String
  field :skills, types[!Types::SkillType]
  field :created_at, types.String
  field :updated_at, types.String
end
