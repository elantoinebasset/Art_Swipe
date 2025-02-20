json.extract! artist, :id, :picture, :first_name, :last_name, :date_of_birth, :created_at, :updated_at
json.url artist_url(artist, format: :json)
