class Campaign < ApplicationRecord
	has_many :scenes
	has_many :characters

	scope :as_summary, -> () {
		includes(:characters)
	}

	def url_slug
		title.parameterize
	end
end
