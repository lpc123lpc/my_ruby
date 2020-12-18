json.extract! journal, :id, :journalid, :journalname, :created_at, :updated_at
json.url journal_url(journal, format: :json)
