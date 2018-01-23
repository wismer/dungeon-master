Types::CampaignType = GraphQL::ObjectType.define do
  name "Campaign"

  implements GraphQL::Relay::Node.interface
  global_id_field :id

  field :title, !types.String
  field :updated_at, !types.String
  field :created_at, !types.String
  field :scenes, types[Types::SceneType]
end
