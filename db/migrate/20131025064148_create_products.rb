class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      # basic information
      t.string :barcode
      t.string :name
      t.integer:company_id
      t.string :img_url
      
      # spec 
      t.float  :capacity
      t.string :capacity_unit
      t.float  :serving_vol
      t.string :serving_unit
      t.float  :serving_size

      # nutrition
      t.float  :calory_kcal
      t.float  :protein_g
      t.float  :fat_g
      t.float  :fat_saturated_g
      t.float  :fat_trans_g
      t.float  :carbohydrate_g
      t.float  :sodium_mg

      # statics
      t.integer :rec_score
      t.integer :queried_no
      t.integer :followed_no

      t.timestamps
    end
  end
end
