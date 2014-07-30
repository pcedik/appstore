json.array!(@aplikaces) do |aplikace|
  json.extract! aplikace, :id, :title, :description
  json.url aplikace_url(aplikace, format: :json)

  json.platforms aplikace.platforms do |plat|
    json.id plat.id
    json.platform plat.platform
    json.url url_for(plat.logo.url(:thumb))
  end

end