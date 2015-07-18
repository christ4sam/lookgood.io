class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :image
      t.text :name
      t.text :description
      t.text :brand
      t.text :category
      t.integer :price_retail
      t.string :currency_iso
      t.text :url

      t.timestamps null: false
    end
  end
end
