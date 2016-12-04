json.extract! r_file, :id, :name, :date, :reporter, :uploader, :event, :place, :access, :URL, :created_at, :updated_at
json.url r_file_url(r_file, format: :json)