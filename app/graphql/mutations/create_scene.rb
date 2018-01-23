Mutations::CreateScene = GraphQL::Relay::Mutation.define do
  name "CreateScene"
  # TODO: define return fields
  # return_field :description, !types.String
  input_field :campaign_id, !types.String
  input_field :name, !types.String
  input_field :description, !types.String

  return_field :name, !types.String
  return_field :description, !types.String
  return_field :updated_at, !types.String
  return_field :created_at, !types.String
  return_field :campaign_id, types.String
  return_field :id, !types.String

  resolve ->(obj, args, ctx) {
    campaign = Campaign.find(args[:campaign_id])
    scene = Scene.create(name: args[:name], description: args[:description], campaign_id: campaign.id)
    scene.save!

    scene.attributes
  }
end
