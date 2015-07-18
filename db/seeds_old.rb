# require 'HTTParty'

Brand.create!(name: "Avon", logo_url: "avon.jpg", description: "Avon provides a wide variety of products for the everyday consume such as eyeshadows, lipsticks, lip-gloss, all types of foundations, concealer, nail polish, stage makeup, and mascara. Among all of these make-up products, Avon also sells fragrances, make-up brushes, and skin care products. On January 8, 2011, Warner Bros. Consumer Products announced that DC Comics' fictional heroine Wonder Woman would team up with Avon Cosmetics to create a Wonder Woman makeup collection that would be available in Avon stores in the spring of 2011", url: " http://www.avon.uk.com")

Brand.create!(name: "Channel", logo_url: "chanel.jpg", description: "Channel provides a wide variety of products for the everyday consume such as eyeshadows, lipsticks, lip-gloss, all types of foundations, concealer, nail polish, stage makeup, and mascara. Among all of these make-up products, Avon also sells fragrances, make-up brushes, and skin care products. On January 8, 2011, Warner Bros. Consumer Products announced that DC Comics' fictional heroine Wonder Woman would team up with Channel Cosmetics to create a Wonder Woman makeup collection that would be available in Avon stores in the spring of 2011", url: "http://www.chanel.com" )

Brand.create!(name: "Nivea", logo_url: "nivea.jpg", description: "Nivea provides a wide variety of products for the everyday consume such as eyeshadows, lipsticks, lip-gloss, all types of foundations, concealer, nail polish, stage makeup, and mascara. Among all of these make-up products, Nivea also sells fragrances, make-up brushes, and skin care products. On January 8, 2011, Warner Bros. Consumer Products announced that DC Comics' fictional heroine Wonder Woman would team up with Nivea Cosmetics to create a Wonder Woman makeup collection that would be available in Avon stores in the spring of 2011", url: "http://www.chanel.com")

Brand.create!(name: "Olay", logo_url: "olay.jpg", description: "Olay provides a wide variety of products for the everyday consume such as eyeshadows, lipsticks, lip-gloss, all types of foundations, concealer, nail polish, stage makeup, and mascara. Among all of these make-up products, Avon also sells fragrances, make-up brushes, and skin care products. On January 8, 2011, Warner Bros. Consumer Products announced that DC Comics' fictional heroine Wonder Woman would team up with Olay Cosmetics to create a Wonder Woman makeup collection that would be available in Olay stores in the spring of 2011", url: "http://www.olay.co.uk")

Brand.create!(name: "L-oreal", logo_url: "l_oreal.jpg", description: "L-oreal provides a wide variety of products for the everyday consume such as eyeshadows, lipsticks, lip-gloss, all types of foundations, concealer, nail polish, stage makeup, and mascara. Among all of these make-up products, Avon also sells fragrances, make-up brushes, and skin care products. On January 8, 2011, Warner Bros. Consumer Products announced that DC Comics' fictional heroine Wonder Woman would team up with L-oreal Cosmetics to create a Wonder Woman makeup collection that would be available in L-oreal stores in the spring of 2011", url: "http://www.loreal-paris.co.uk" )

Brand.create!(name: "Clean&Clean", logo_url: "clean_clear.jpg", description: "Clean&Clean provides a wide variety of products for the everyday consume such as eyeshadows, lipsticks, lip-gloss, all types of foundations, concealer, nail polish, stage makeup, and mascara. Among all of these make-up products, Avon also sells fragrances, make-up brushes, and skin care products. On January 8, 2011, Warner Bros. Consumer Products announced that DC Comics' fictional heroine Wonder Woman would team up with Channel Cosmetics to create a Wonder Woman makeup collection that would be available in Avon stores in the spring of 2011", url: "http://www.chanel.com",)

Brand.create!(name: "Clarins", logo_url: "clarins.jpg", description: "Clarins provides a wide variety of products for the everyday consume such as eyeshadows, lipsticks, lip-gloss, all types of foundations, concealer, nail polish, stage makeup, and mascara. Among all of these make-up products, Clarins also sells fragrances, make-up brushes, and skin care products. On January 8, 2011, Warner Bros. Consumer Products announced that DC Comics' fictional heroine Wonder Woman would team up with Clarins Cosmetics to create a Wonder Woman makeup collection that would be available in Avon stores in the spring of 2011", url: "http://www.clarins.co.uk")

Brand.create!(name: "Lux", logo_url: "", description: "Lux provides a wide variety of products for the everyday consume such as eyeshadows, lipsticks, lip-gloss, all types of foundations, concealer, nail polish, stage makeup, and mascara. Among all of these make-up products, Avon also sells fragrances, make-up brushes, and skin care products. On January 8, 2011, Warner Bros. Consumer Products announced that DC Comics' fictional heroine Wonder Woman would team up with Channel Cosmetics to create a Wonder Woman makeup collection that would be available in Avon stores in the spring of 2011", url: "http://www.lux.com" )

Brand.create!(name: "Mac", logo_url: "mac.jpg", description: "MAC provides a wide variety of products for the everyday consume such as eyeshadows, lipsticks, lip-gloss, all types of foundations, concealer, nail polish, stage makeup, and mascara. Among all of these make-up products, MAC also sells fragrances, make-up brushes, and skin care products. On January 8, 2011, Warner Bros. Consumer Products announced that DC Comics' fictional heroine Wonder Woman would team up with MAC Cosmetics to create a Wonder Woman makeup collection that would be available in MAC stores in the spring of 2011. The collection included blush, eye shadow, eyeliner, lip gloss, lipstick, mascara, mineral powder and nail polish", url: "www.maccosmetics.com")

Brand.create!(name: "Clinique", logo_url:"clinique.jpg", description: "In 1968, with the introduction of the now world-famous 3-Step Skin Care System – a daily cleansing, exfoliating and moisturising routine – Clinique was born. Just one year later Clinique opened its first counter in the UK. It was the first ever dermatologist-created, allergy-tested, 100% fragrance-free collection of beauty products ever marketed.

  In 1976 Clinique was also the first prestige cosmetics company to recognise the different skin care needs of men and to provide them with a practical, approachable line of skin care – Skin Supplies for Men.", url: "www.clinique.com")

brands = Brand.all.map(&:id)

response = HTTParty.get("https://www.popshops.com/v3/products.json", query: { account: ENV['POPSHOPS_API_KEY'], catalog: ENV['POPSHOPS_CATALOG'], results_per_page: 100})

response['results']['products']['product'].each do |product|
  product['offers']['offer'].each do |offer|
    Product.create!(
      description: offer['description'],
      image: offer['image_url_large'],
      name: offer['name'],
      price_retail: offer['price_retail'],
      currency_iso: offer['currency_iso'],
      url: offer['url'],
      brand_id: brands.sample
    )
    puts "Product created: #{offer['name']}"
  end
end

User.create! name: "Megan Fox", email: "user1@email.com", password: "password", image: Rails.root.join("app/assets/images/user1.jpg").open

User.create! name: "Jessica Alba", email: "user2@email.com", password: "password", image: Rails.root.join("app/assets/images/user2.jpg").open

User.create! name: "Emma Watson", email: "user3@email.com", password: "password", image: Rails.root.join("app/assets/images/user3.jpg").open

User.create! name: "Olivia Wilde", email: "user4@email.com", password: "password", image: Rails.root.join("app/assets/images/user4.jpg").open

User.create! name: "Scarlett Johansson", email: "user5@email.com", password: "password", image: Rails.root.join("app/assets/images/user5.jpg").open

User.create! name: "Scarlett Johansson", email: "user6@email.com", password: "password", image: Rails.root.join("app/assets/images/user5.jpg").open

User.create! name: "Scarlett Johansson", email: "user7@email.com", password: "password", image: Rails.root.join("app/assets/images/user7.jpg").open

User.create! name: "Scarlett Johansson", email: "user8@email.com", password: "password", image: Rails.root.join("app/assets/images/user8.jpg").open