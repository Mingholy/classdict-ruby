json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :publish_time, :version, :filepath, :pro, :con, :difficulty
  json.url book_url(book, format: :json)
end
