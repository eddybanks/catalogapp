json.array!(@extended_learnings) do |extended_learning|
  json.extract! extended_learning, :id, :section_content
  json.url extended_learning_url(extended_learning, format: :json)
end
