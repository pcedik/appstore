class Platform < ActiveRecord::Base
	has_many :aplikacePlatforms, :inverse_of => :platform
	has_many :aplikaces, :through => :aplikacePlatforms
	scope :ignoreCase, lambda { |plat| where('lower(platform) = ?', plat.downcase) }
	accepts_nested_attributes_for :aplikacePlatforms
end
