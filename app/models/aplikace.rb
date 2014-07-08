class Aplikace < ActiveRecord::Base
	validates :title,  :presence => true
	has_many :aplikacePlatforms,  :inverse_of => :aplikace
	has_many :platforms, :through => :aplikacePlatforms
	accepts_nested_attributes_for :aplikacePlatforms

end
