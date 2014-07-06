class Platform < ActiveRecord::Base
	has_many :aplikacePlatforms
	has_many :aplikaces, :through => :aplikacePlatforms
	scope :ignoreCase, lambda { |plat| where('lower(platform) = ?', plat.downcase) }
end
