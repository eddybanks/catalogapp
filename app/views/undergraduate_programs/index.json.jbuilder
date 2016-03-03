json.array!(@undergraduate_programs) do |undergraduate_program|
  json.extract! undergraduate_program, :id, :section_content
  json.url undergraduate_program_url(undergraduate_program, format: :json)
end
