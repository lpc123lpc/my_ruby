json.extract! borrowtable, :id, :bookid, :bookname, :borrowerid, :borrowdate, :returndate, :created_at, :updated_at
json.url borrowtable_url(borrowtable, format: :json)
