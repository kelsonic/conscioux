json.array!(@cosmetics_reviews) do |cosmetics_review|
  json.extract! cosmetics_review, :id, :type_tag, :brand, :product_name, :store, :city, :country, :gender, :cosmetics_review_title, :cosmetics_review_body, :user_id
  json.url cosmetics_review_url(cosmetics_review, format: :json)
end
