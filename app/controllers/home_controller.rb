class HomeController < ApplicationController
  def index
    @top_products = Product.all.select { |p| p.average_rating > 1 }[0..11]
  end
end

