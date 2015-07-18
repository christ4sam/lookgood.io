class RemoveColumnLogoFromBrand < ActiveRecord::Migration
  def change
    remove_column :brands, :logo
  end
end
