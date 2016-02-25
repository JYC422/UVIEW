class Restaurant < ActiveRecord::Base
  has_many :reviews


  def avg_food
    # self.reviews.each {|review| review.food_rating }
  end

  def avg_service
    # self.reviews.each {|review| review.service_rating }
  end

  def avg_ambiance
    # self.reviews.each {|review| review.ambiance_rating }
  end

  def food_rating_icons
    raw(("<i class='glyphicon glyphicon-star'></i> " * food_rating) + ("<i class='glyphicon glyphicon-star-empty'></i> " * (5-food_rating)).strip)
  end

  def service_rating_icons
    raw(("<i class='glyphicon glyphicon-star'></i> " * service_rating) + ("<i class='glyphicon glyphicon-star-empty'></i> " * (5-food_rating)).strip)
  end

  def ambiance_rating_icons
    raw(("<i class='glyphicon glyphicon-star'></i> " * ambiance_rating) + ("<i class='glyphicon glyphicon-star-empty'></i> " * (5-food_rating)).strip)
  end

end
