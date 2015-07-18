class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer  :user_id
      t.integer  :product_id
      t.text     :product_image 
      t.integer  :brand_id
      t.text     :review_date
      t.text     :description
      t.timestamps null: false
    end
  end
end
