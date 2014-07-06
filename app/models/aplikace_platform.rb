class AplikacePlatform < ActiveRecord::Base
	belongs_to :platform
	belongs_to :aplikace, :inverse_of => :aplikacePlatforms
end
