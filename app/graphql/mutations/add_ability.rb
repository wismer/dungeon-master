Mutations::AddAbility = GraphQL::Relay::Mutation.define do
  name "AddAbility"
  # TODO: define return fields
  return_field :abilities, types[Types::AbilityType]
  # return_field :description, !types.String
  # return_field :name, !types.String
  # return_field :id, !types.String
  # return_field :created_at, !types.String
  # return_field :updated_at, !types.String

  # TODO: define arguments
  input_field :description, !types.String
  input_field :name, !types.String

  resolve ->(obj, args, ctx) {
    ability = Ability.create(name: args[:name], description: args[:description])
    { abilities: Ability.all }
  }
end

AddAbilityThing = GraphQL::InputObjectType.define do
  name "AddAbilityThing"

  argument :name, !types.String
  argument :description, !types.String
end
