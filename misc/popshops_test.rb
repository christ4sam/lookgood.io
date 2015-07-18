require 'HTTParty'
require 'pry'

response = HTTParty.get("https://www.popshops.com/v3/products.json", query: { account: ENV['POPSHOPS_API_KEY'], catalog: ENV['POPSHOPS_CATALOG'], results_per_page: 100})

response['results']['products']['product'].each do |product|
  
  Product.create!(
    description: product['offers']['offer'].first['description'],
    image: ,
    name: ,
    price_retail: ,
    currency_iso:,
    brand:,
    description:, 
    category:,
    url:

  )

  # {
  #   brand: 1867285,
  #   category: 13346,
  #   description: "500ml",
  #   id: 105476554,
  #   image_url_large: "http://avonshop.co.uk/shop/assets/images/prod/PROD_1046613M.jpg",
  #   name: "Lavender Bubble Bath 500ml",
  #   offer_count: 1,
  #   price_max: 4,
  #   price_min: 4,
  #   price_min_merchant: 2227,
  #   price_max_merchant: 2227,
  #   offers: {
  #     offer: [
  #       {
  #         condition: "new",
  #         description: "500ml",
  #         estimated_shipping: 3.5,
  #         id: 1066936261,
  #         image_url_large: "http://avonshop.co.uk/shop/assets/images/prod/PROD_1046613M.jpg",
  #         merchant: 2227,
  #         name: "Bubble Bath 500ml Lavender",
  #         price_merchant: 4,
  #         price_retail: 4,
  #         sku: "31465",
  #         url: "http://r.popshops.com/r/WkU5d0dzMlh2VEcyU2Y1eE9BODBMZTNGN1dIK3FLVlhsQjVEVlFTWXh6RmczT2tKYUhJaG1zSXNPRmpICms5QllCSURVUFI5S3hUZ2VlOEZoM1RJK1B3PT0K",
  #         currency_iso: "GBP",
  #         estimated_price_total: "7.50"
  #       }
  #       ],
  #       count: 1
  #     }
  #   }


  puts product
end

# binding.pry
# nil