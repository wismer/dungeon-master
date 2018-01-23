module Api
  class Api::HandbookController < ApplicationController
    def index
      @skills = Skill.all
      @abiilities = Ability.all

      render json: {
        data: {
          skills: @skills,
          abiilities: @abiilities
        }
      }
    end
  end
end
