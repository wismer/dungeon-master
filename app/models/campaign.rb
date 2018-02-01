class Campaign < ApplicationRecord
	has_many :scenes
	has_many :characters

	scope :as_summary, -> () {
		includes(:characters)
	}
end
