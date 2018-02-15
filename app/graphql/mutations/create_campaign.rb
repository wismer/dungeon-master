Mutations::CreateCampaign = GraphQL::Relay::Mutation.define do
  name "CreateCampaign"
  # TODO: define return fields
  # return_field :description, !types.String
  # return_field :name, !types.String
  return_field :title, types.String
  return_field :id, types.ID
  return_field :created_at, types.String
  return_field :setting, !types.String
  return_field :areas_of_interest, types[types.String]
  return_field :desc, !types.String
  return_field :url_slug, types.String
  return_field :updated_at, types.String

  # TODO: define arguments
  input_field :title, !types.String
  input_field :desc, !types.String
  input_field :setting, !types.String

  resolve ->(obj, args, ctx) {
    campaign = Campaign.create(title: args[:title], desc: args[:desc], setting: args[:setting])
    campaign.attributes
  }
end
