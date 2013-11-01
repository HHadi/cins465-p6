json.array!(@urls) do |url|
  json.extract! url, :url, :doi_id
  json.url url_url(url, format: :json)
end
