json.array!(@aplikaces) do |aplikace|
  json.extract! aplikace, :id, :title, :description
  json.url aplikace_url(aplikace, format: :json)

    if @plId.nil? 
	  	aplPlat = aplikace.platforms
	else
	 	aplPlat = aplikace.platforms.where(id: @plId)
	end

	json.platforms aplPlat do |plat|
	    json.id plat.id
	    json.platform plat.platform
	    json.url url_for(plat.logo.url(:thumb))
	end

end