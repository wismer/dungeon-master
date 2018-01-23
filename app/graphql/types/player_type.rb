Types::PlayerType = GraphQL::ObjectType.define do
  name "Player"

  implements GraphQL::Relay::Node.interface
  global_id_field :id

  field :created_at, !types.String
  field :updated_at, !types.String
  field :name, !types.String
end