Types::SceneType = GraphQL::ObjectType.define do
  name "Scene"
  implements GraphQL::Relay::Node.interface

  global_id_field :id

  field :name, !types.String
  field :description, !types.String
  field :updated_at, !types.String
  field :created_at, !types.String
  field :campaign_id, types.String
end
