class AplikacePlatform < ActiveRecord::Base
	belongs_to :platform
	belongs_to :aplikace
	has_many :versions, :foreign_key => 'aplikace_platform_id', :inverse_of => :aplikacePlatform, dependent: :destroy
	has_many :previews, dependent: :destroy
	accepts_nested_attributes_for :versions, :previews


end
