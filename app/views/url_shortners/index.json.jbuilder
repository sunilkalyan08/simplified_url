json.array!(@url_shortners) do |url_shortner|
  json.extract! url_shortner, :id, :original_url, :generated_url
  json.url url_shortner_url(url_shortner, format: :json)
end
