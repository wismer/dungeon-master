Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :node, GraphQL::Relay::Node.field

  field :abilities, types[Types::AbilityType], "all abilities" do
    description "cmon wtf"
    resolve -> (obj, args, ctxt) {
      Ability.all
    }
  end

  field :scenes, types[Types::SceneType], "all scenes" do

    resolve -> (obj, args, ctxt) {
      Scene.all
    }
  end

  field :campaigns, types[Types::CampaignType], "all campaigns" do
    resolve -> (obj, args, ctxt) {
      Campaign.all
    }
  end

  field :campaignsWithCharactersAndScenes, types[Types::CampaignSummaryType], "wtf" do
    resolve -> (obj, args, ctxt) {
      Campaign.as_summary
    }
  end

  field :skills, types[Types::SkillType], "all skills" do
    description "ok ok"

    resolve -> (obj, args, ctxt) {
      Skill.all
    }
  end

  field :campaignView, Types::CampaignType, "campaign by ID" do
    argument :campaignId, !types.String

    resolve -> (obj, args, ctxt) {
      Campaign.includes(:scenes).find(args[:campaignId])
    }
  end

  field :getScene, Types::SceneType, "gets a scene related to a campaign and name" do
    argument :campaignId, !types.String
    argument :sceneName, !types.String

    resolve -> (obj, args, ctxt) {
      Scene.where(campaign_id: args[:campaignId], name: args[:sceneName]).first
    }
  end
end
