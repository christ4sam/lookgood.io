class AddUrlToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :url, :text
  end
end
