class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :rstrnt_name, presence: true
  validates :address, presence: true
  validates :phone_num, presence: true
  validates :hours, presence: true
  validates :rstrnt_site, presence: true

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
