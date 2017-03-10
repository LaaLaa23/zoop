json.extract! image, :id, :url, :public_id, :species_id, :created_at, :updated_at
json.url image_url(image, format: :json)
