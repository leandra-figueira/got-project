json.extract! book, :id, :book_name, :character_book_id, :created_at, :updated_at
json.url book_url(book, format: :json)
