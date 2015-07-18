class RemoveBrandIdAndProductImageAndReviewDateFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :product_image
    remove_column :reviews, :brand_id
    remove_column :reviews, :review_date
    remove_column :reviews, :user_image
  end
end
