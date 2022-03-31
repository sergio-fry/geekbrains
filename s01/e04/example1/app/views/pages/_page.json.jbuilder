json.extract! page, :id, :title, :body, :published, :created_at, :updated_at
json.url page_url(page, format: :json)
