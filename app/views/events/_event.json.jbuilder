json.extract! event, :id, :name, :day, :created_at, :updated_at
json.url event_url(event, format: :json)