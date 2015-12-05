class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :short_description
      t.boolean :active
      t.decimal :price, precision: 8, scale: 2, default: 0.0
      t.decimal :cost_price, precision: 8, scale: 2, default: 0.0
      t.boolean :featured
      t.string :color
      t.string :image_id
      t.string :category_name
      t.decimal :weight, precision: 8, scale: 2, default: 0.0
      t.integer :sku

      t.timestamps null: false
    end
  end
end
