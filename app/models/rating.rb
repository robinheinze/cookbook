class Rating < ActiveRecord::Base
  validates :value, presence: true
  validates :recipe_id, presence: true


  belongs_to :recipe
end
