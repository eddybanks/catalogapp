json.array!(@admissions) do |admission|
  json.extract! admission, :id, :section_header, :section_text, :subsection_header, :subsection_text, :url_links
  json.url admission_url(admission, format: :json)
end
