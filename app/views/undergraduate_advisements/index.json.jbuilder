json.array!(@undergraduate_advisements) do |undergraduate_advisement|
  json.extract! undergraduate_advisement, :id, :section_content
  json.url undergraduate_advisement_url(undergraduate_advisement, format: :json)
end
