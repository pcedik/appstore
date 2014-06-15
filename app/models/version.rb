class Version < ActiveRecord::Base
	#attr_accessible :aplikace_id, :version
	#@version = version.new(version_params)

	belongs_to :aplikace

	#private
  	#	params.require(:version).permit(:version)
  	#end
end
