json.extract! artwork, :id, :title, :image, :artist_id, :creation_date, :history, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
