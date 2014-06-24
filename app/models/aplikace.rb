class Aplikace < ActiveRecord::Base
	#attr_accessible :title
	validates :title,  :presence => true
	has_many :versions, :dependent => :destroy
	has_many :aplikacePlatforms
	has_many :platforms, :through => :aplikacePlatforms

end
