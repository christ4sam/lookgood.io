class AddNameAndImageAndReviewIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :image, :text
    add_column :users, :review_id, :integer
  end
end
