CharacterTypeConnection = Types::CharacterType.define_connection do
  name "CharacterTypeConnection"

  field :characters do
    type types[types.Int]
    resolve -> (a, b, c) {
      binding.pry
    }
  end
end

Types::BaseCampaignType = GraphQL::InterfaceType.define do
  name "Campaign"

  field :title, !types.String
  field :url_slug, !types.String
  field :setting, types.String
  field :areas_of_interest, types[types.String]
  field :desc, types.String
  field :updated_at, !types.String
  field :created_at, !types.String
end

Types::CampaignType = GraphQL::InterfaceType.define do
  name "CampaignType"

  field :title, types.String
  field :id, types.ID
  field :created_at, types.String
  field :setting, types.String
  field :areas_of_interest, types[types.String]
  field :desc, types.String
  field :url_slug, types.String
  field :updated_at, types.String
end

Types::CampaignSummaryType = GraphQL::ObjectType.define do
  name "CampaignSummary"
  interfaces [Types::BaseCampaignType]

  implements GraphQL::Relay::Node.interface
  global_id_field :id

  field :characters, types[Types::CharacterSummaryType]
end
