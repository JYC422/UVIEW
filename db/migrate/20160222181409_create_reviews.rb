class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :food_rating
      t.integer :service_rating
      t.integer :ambiance_rating
      t.text :review_content
      t.integer :reviewer_revs

      t.timestamps null: false
    end
  end
end
