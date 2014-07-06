class Aplikace < ActiveRecord::Base
	validates :title,  :presence => true
	has_many :versions, :inverse_of => :aplikace
	has_many :aplikacePlatforms, :dependent => :destroy, :inverse_of => :aplikace
	has_many :platforms, :through => :aplikacePlatforms
	has_many :previews
	accepts_nested_attributes_for :aplikacePlatforms, :versions, :previews, allow_destroy: true


RailsAdmin.config do |config|
  config.main_app_name = Proc.new { |controller| [ "AppStore", "Konfgurace aplikaci - #{controller.params[:action].try(:titleize)}" ] }
end

end
