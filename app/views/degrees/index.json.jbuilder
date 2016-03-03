json.array!(@degrees) do |degree|
  json.extract! degree, :id, :section_content
  json.url degree_url(degree, format: :json)
end
