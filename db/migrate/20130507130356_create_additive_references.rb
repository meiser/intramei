class CreateAdditiveReferences < ActiveRecord::Migration
  def change
    create_table :additive_references do |t|
	  t.references :meal
	  t.references :additive
      t.timestamps
    end
  end
end
