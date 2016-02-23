class Review < ActiveRecord::Base
  include ActionView::Helpers::OutputSafetyHelper

  def food_rating_icons
    raw(("<i class=\"glyphicon glyphicon-star\"></i> " * food_rating) + ("<i class=\"glyphicon glyphicon-star-empty\"></i> " * (5-food_rating)).strip)
  end
end
