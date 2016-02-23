json.array!(@papers) do |paper|
  json.extract! paper, :id, :title, :article, :author, :rating
  json.url paper_url(paper, format: :json)
end
