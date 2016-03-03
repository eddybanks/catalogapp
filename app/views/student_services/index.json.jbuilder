json.array!(@student_services) do |student_service|
  json.extract! student_service, :id, :section_content
  json.url student_service_url(student_service, format: :json)
end
