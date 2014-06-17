json.array!(@aplikaces) do |aplikace|
  json.extract! aplikace, :id, :title
  json.url aplikace_url(aplikace, format: :json)
end
