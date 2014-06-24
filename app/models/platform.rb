class Platform < ActiveRecord::Base
	has_many :aplikacePlatforms
	has_many :aplikaces, :through => :aplikacePlatforms
end
