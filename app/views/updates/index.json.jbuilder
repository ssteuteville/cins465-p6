json.array!(@updates) do |update|
  json.extract! update, :doi_id, :url, :description
  json.url update_url(update, format: :json)
end
