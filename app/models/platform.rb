class Platform < ActiveRecord::Base
	has_many :aplikace_platform
	has_many :aplikace, :through => :aplikace_platform
end
