Types::SkillType = GraphQL::ObjectType.define do
  name "Skill"

  field :id, !types.String
  field :name, !types.String
  field :description, !types.String
  # field :ability, !types.AbilityType
end
