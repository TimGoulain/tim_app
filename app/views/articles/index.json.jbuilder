json.array!(@articles) do |article|
  json.extract! article, :id, :text, :author
  json.url article_url(article, format: :json)
end
