class Product < ActiveRecord::Base
  has_many :reviews
  belongs_to :brand
  has_many :ratings

  def average_rating
    return 0 if ratings.size == 0
    ratings.sum(:score) / ratings.size
  end
end
