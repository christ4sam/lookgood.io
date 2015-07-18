class ChandeCategoryToRatingInProduct < ActiveRecord::Migration
  def up
    remove_column :products, :category
    add_column :products, :rating, :integer
  end

  def down
    add_column :products, :category, :text
    remove_column :products, :rating
  end
end
