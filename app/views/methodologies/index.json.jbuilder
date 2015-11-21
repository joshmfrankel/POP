json.array!(@methodologies) do |methodology|
  json.extract! methodology, :id
  json.url methodology_url(methodology, format: :json)
end
