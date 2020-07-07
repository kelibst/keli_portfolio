json.extract! letter, :id, :name, :email, :title, :description, :created_at, :updated_at
json.url letter_url(letter, format: :json)
