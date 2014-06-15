class Aplikace < ActiveRecord::Base
	#attr_accessible :title

	#@application = application.new(application_params) 

	has_many :version, :dependent => :destroy

	#private
  	#	def application_params
    #	params.require(:application).permit(:title)
  	#end
end
