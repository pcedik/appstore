class Aplikace < ActiveRecord::Base
	validates :title,  :presence => true
	has_many :versions, :dependent => :destroy
	has_many :aplikacePlatforms, :dependent => :destroy
	has_many :platforms, :through => :aplikacePlatforms
	has_many :previews, :dependent => :destroy
	accepts_nested_attributes_for :aplikacePlatforms, :versions, allow_destroy: true
end
