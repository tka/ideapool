json.projects @projects do |p|
  json.(p, "id", "name", "web_url", "fb_url", "github_url", "tags", "description", "created_at", "updated_at")
  json.image_url p.image.url
  json.category do
    json.(p.category, :id, :name)
  end
end
