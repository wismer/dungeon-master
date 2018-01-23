Rails.application.routes.draw do
  post "/api/query", to: "graphql#execute"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/api/graphiql", graphql_path: "/api/query"
  end

  namespace :api do
    resources :handbook
  end
end
