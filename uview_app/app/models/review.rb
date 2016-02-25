class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  validates :food_rating, presence: true
  validates :service_rating, presence: true
  validates :ambiance_rating, presence: true

  include ActionView::Helpers::OutputSafetyHelper

  def food_rating_icons
    food_rating ||= 0
    raw(("<i class='glyphicon glyphicon-star'></i> " * food_rating) + ("<i class='glyphicon glyphicon-star-empty'></i> " * (5-food_rating)).strip)
  end

  def service_rating_icons
    service_rating ||= 0
    raw(("<i class='glyphicon glyphicon-star'></i> " * service_rating) + ("<i class='glyphicon glyphicon-star-empty'></i> " * (5-food_rating)).strip)
  end

  def ambiance_rating_icons
    ambiance_rating ||= 0
    raw(("<i class='glyphicon glyphicon-star'></i> " * ambiance_rating) + ("<i class='glyphicon glyphicon-star-empty'></i> " * (5-food_rating)).strip)
  end

end
