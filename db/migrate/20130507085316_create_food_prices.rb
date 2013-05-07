class CreateFoodPrices < ActiveRecord::Migration
  def change
    create_table :food_prices do |t|
      t.decimal :price

      t.timestamps
    end
  end
end
