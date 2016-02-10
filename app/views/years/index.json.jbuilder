json.array!(@years) do |year|
  json.extract! year, :id, :name, :homepage_header, :homepage_text
  json.url year_url(year, format: :json)
end
