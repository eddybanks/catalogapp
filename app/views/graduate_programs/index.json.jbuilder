json.array!(@graduate_programs) do |graduate_program|
  json.extract! graduate_program, :id, :section_content
  json.url graduate_program_url(graduate_program, format: :json)
end
