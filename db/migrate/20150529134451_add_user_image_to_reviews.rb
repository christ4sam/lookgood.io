class AddUserImageToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :user_image, :string
  end
end
