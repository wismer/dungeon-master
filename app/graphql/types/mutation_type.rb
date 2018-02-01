Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :addAbility, Mutations::AddAbility.field
  field :createCampaign, Mutations::CreateCampaign.field
  field :createScene, Mutations::CreateScene.field
  field :createCharacter, Mutations::CreateCharacter.field
end
