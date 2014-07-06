class Version < ActiveRecord::Base
	#attr_accessible :aplikace_id, :version
	#@version = version.new(version_params)

	belongs_to :aplikace, :inverse_of => :versions
	has_many :attachments, :inverse_of => :version
	accepts_nested_attributes_for :attachments
	#private
  	#	params.require(:version).permit(:version)
  	#end
end
