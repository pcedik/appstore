class Aplikace < ActiveRecord::Base
	#attr_accessible :title

	#@application = application.new(application_params) 

	has_many :version, :dependent => :destroy
	has_many :aplikace_platform
	has_many :platform, :through => :aplikace_platform

	#private
  	#	def application_params
    #	params.require(:application).permit(:title)
  	#end
end
