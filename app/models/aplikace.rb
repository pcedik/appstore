class Aplikace < ActiveRecord::Base
	validates :title,  :presence => true
	has_many :versions, :dependent => :destroy
	has_many :aplikacePlatforms, :dependent => :destroy
	has_many :platforms, :through => :aplikacePlatforms
	has_many :previews
	accepts_nested_attributes_for :aplikacePlatforms, :versions, :previews, allow_destroy: true
end
