class Estate < ApplicationRecord

	belongs_to :user
	has_many :rents

	geocoded_by :description	
	after_validation :geocode

		
end
