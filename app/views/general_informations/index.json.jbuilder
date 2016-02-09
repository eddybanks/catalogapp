json.array!(@general_informations) do |general_information|
  json.extract! general_information, :id, :section_header, :section_text, :subsection_header, :subsection_text, :url_links
  json.url general_information_url(general_information, format: :json)
end
