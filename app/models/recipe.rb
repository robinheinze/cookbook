class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :ratings
  accepts_nested_attributes_for :tags
  validates :name, presence: true
  validates :content, presence: true

  def average_rating
    sum = 0.0
    self.ratings.each { |n| sum += n.value}
    if self.ratings.length != 0
      average = sum / self.ratings.length.to_f
    else
      average = 0.0
    end
  end

  def self.order_by_rating
    recipe_ratings = {}
    all_recipes = Recipe.all
    all_recipes.each do |recipe|
      recipe_ratings[recipe] = recipe.average_rating
    end
    recipe_ratings.keys.sort { |a, b| recipe_ratings[b] <=> recipe_ratings[a] }
  end
end
