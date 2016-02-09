json.array!(@policies) do |policy|
  json.extract! policy, :id, :section_header, :section_text, :subsection_header, :subsection_text, :url_links
  json.url policy_url(policy, format: :json)
end
