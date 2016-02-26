class RemoveRatingsFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :avg_food, :integer
    remove_column :restaurants, :avg_service, :integer
    remove_column :restaurants, :avg_ambiance, :integer
  end
end
