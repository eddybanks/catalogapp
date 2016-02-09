json.array!(@administrations) do |administration|
  json.extract! administration, :id, :section_header, :section_text, :subsection_header, :subsection_text, :url_links
  json.url administration_url(administration, format: :json)
end
