class AplikacePlatform < ActiveRecord::Base
	belongs_to :platform, :inverse_of => :aplikacePlatforms
	belongs_to :aplikace, :inverse_of => :aplikacePlatforms
	has_many :versions, :foreign_key => 'aplikace_platform_id'
	has_many :previews, :foreign_key => 'aplikace_platform_id'
	accepts_nested_attributes_for :versions, :previews


end
