class AddColumnLogoUrlToBrand < ActiveRecord::Migration
  def change
    add_column :brands, :logo_url, :text
  end
end
