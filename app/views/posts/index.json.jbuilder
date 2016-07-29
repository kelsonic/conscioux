json.array!(@lifestyle_posts) do |lifestyle_post|
  json.extract! lifestyle_post, :id, :topic, :city, :country, :title, :body, :takeaways, :people, :image, :video, :user_id
  json.url lifestyle_post_url(lifestyle_post, format: :json)
end
