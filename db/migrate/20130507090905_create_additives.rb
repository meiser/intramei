class CreateAdditives < ActiveRecord::Migration
  def change
    create_table :additives do |t|
      t.integer :no
      t.text :description

      t.timestamps
    end
  end
end
