json.array!(@employee_leaves) do |employee_leafe|
  json.extract! employee_leafe, :id
  json.url employee_leafe_url(employee_leafe, format: :json)
end
