json.extract! book, :id, :title, :Author, :Price, :date, :created_at, :updated_at
json.url book_url(book, format: :json)
