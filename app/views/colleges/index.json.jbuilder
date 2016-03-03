json.array!(@colleges) do |college|
  json.extract! college, :id, :section_content
  json.url college_url(college, format: :json)
end
