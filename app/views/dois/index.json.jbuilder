json.array!(@dois) do |doi|
  json.extract! doi, :name, :description
  json.url doi_url(doi, format: :json)
end
