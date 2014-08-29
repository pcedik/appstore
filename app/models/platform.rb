class Platform < ActiveRecord::Base
	validates :platform,  :presence => true
	has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "80x80" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
	has_many :aplikacePlatforms, :inverse_of => :platform, dependent: :destroy
	has_many :aplikaces, :through => :aplikacePlatforms
	scope :ignoreCase, lambda { |plat| where('lower(platform) = ?', plat.downcase) }
end
