class Aplikace < ActiveRecord::Base
	validates :title,  :presence => true
	has_many :aplikacePlatforms, :inverse_of => :aplikace, dependent: :destroy
	has_many :platforms, :through => :aplikacePlatforms

end
