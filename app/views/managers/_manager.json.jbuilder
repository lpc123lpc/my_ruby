json.extract! manager, :id, :name, :managerid, :gender, :phone, :email, :created_at, :updated_at
json.url manager_url(manager, format: :json)
