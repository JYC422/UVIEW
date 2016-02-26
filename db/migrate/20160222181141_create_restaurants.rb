class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :rstrnt_name
      t.integer :avg_food
      t.integer :avg_service
      t.integer :avg_ambiance
      t.string :tags
      t.string :address
      t.string :phone_num
      t.integer :num_reviews
      t.string :hours
      t.string :rstrnt_site
      t.string :review_id

      t.timestamps null: false
    end
  end
end
