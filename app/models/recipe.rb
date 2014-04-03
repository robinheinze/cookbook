class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :ratings
  accepts_nested_attributes_for :tags
  validates :name, presence: true
  validates :content, presence: true

  def average_rating
    sum = 0
    self.ratings.each { |n| sum += n.value}
    sum / self.ratings.length
  end
end
