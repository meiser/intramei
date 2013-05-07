class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
	  t.integer :no
      t.string :name
	  t.references :food_price
      t.timestamps
    end
  end
end
