class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  validates :food_rating, presence: true
  validates :service_rating, presence: true
  validates :ambiance_rating, presence: true

  include ActionView::Helpers::OutputSafetyHelper

  def food_rating_icons
    self.food_rating ||= 0
    raw(("<i class='glyphicon glyphicon-star'></i> " * self.food_rating) + ("<i class='glyphicon glyphicon-star-empty'></i> " * (5-self.food_rating)).strip)
  end

  def service_rating_icons
    self.service_rating ||= 0
    raw(("<i class='glyphicon glyphicon-star'></i> " * self.service_rating) + ("<i class='glyphicon glyphicon-star-empty'></i> " * (5-self.service_rating)).strip)
  end

  def ambiance_rating_icons
    self.ambiance_rating ||= 0
    raw(("<i class='glyphicon glyphicon-star'></i> " * self.ambiance_rating) + ("<i class='glyphicon glyphicon-star-empty'></i> " * (5-self.ambiance_rating)).strip)
  end

end
