json.extract! book, :id, :id, :title, :author, :press, :price, :intime, :category, :created_at, :updated_at
json.url book_url(book, format: :json)
