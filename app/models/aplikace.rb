class Aplikace < ActiveRecord::Base
	#attr_accessible :title
	validates :title,  :presence => true
	has_many :version, :dependent => :destroy
	has_many :aplikace_platform
	has_many :platform, :through => :aplikace_platform

end
