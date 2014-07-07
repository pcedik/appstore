class AplikacePlatform < ActiveRecord::Base
	belongs_to :platform, :inverse_of => :aplikacePlatforms
	belongs_to :aplikace, :inverse_of => :aplikacePlatforms
end
