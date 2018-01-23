Mutations::CreateCampaign = GraphQL::Relay::Mutation.define do
  name "CreateCampaign"
  # TODO: define return fields
  # return_field :description, !types.String
  # return_field :name, !types.String
  return_field :campaign, Types::CampaignType

  # TODO: define arguments
  input_field :title, !types.String

  resolve ->(obj, args, ctx) {
    campaign = Campaign.create(title: args[:title])
    { campaign: campaign }
  }
end
