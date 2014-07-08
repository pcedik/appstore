class Version < ActiveRecord::Base
	has_many :attachments, :inverse_of => :version
	belongs_to :aplikacePlatform, :inverse_of => :versions
	accepts_nested_attributes_for :attachments
end
