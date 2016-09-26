class Estate < ApplicationRecord
	belongs_to :user
	has_many :rents
	validates :longitude, presence: true	
	validates :latitude, presence: true	

end
