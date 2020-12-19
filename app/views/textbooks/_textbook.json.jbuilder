json.extract! textbook, :id, :department, :term, :bookname, :author, :press, :created_at, :updated_at
json.url textbook_url(textbook, format: :json)
