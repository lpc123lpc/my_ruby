json.extract! historyborrowtable, :id, :bookid, :bookname, :borrowerid, :borrowdate, :returndate, :created_at, :updated_at
json.url historyborrowtable_url(historyborrowtable, format: :json)
