class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.references :item, index: true
      t.integer :price_low
      t.integer :price_average
      t.integer :price_high

      t.timestamps
    end
  end
end
