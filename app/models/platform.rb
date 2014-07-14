class Platform < ActiveRecord::Base
	validates :platform,  :presence => true
	has_many :aplikacePlatforms, :inverse_of => :platform
	has_many :aplikaces, :through => :aplikacePlatforms
	scope :ignoreCase, lambda { |plat| where('lower(platform) = ?', plat.downcase) }
end
