json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :product_id, :brand_id, :review_date
  json.url review_url(review, format: :json)
end
