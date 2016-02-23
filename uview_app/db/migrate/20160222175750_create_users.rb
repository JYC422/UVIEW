class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.integer :num_reviews
      t.text :about_me
      t.boolean :is_owner
      t.boolean :is_top_rev
      t.string :review_id
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
