module AplikacesHelper
	def install_files(platforma)
	  pl = @aplikace.aplikacePlatforms.where(platform_id: platforma).last
      unless pl.nil? || pl.versions.last.nil?
      	pl.versions.last.attachments
      end
  	end
end
