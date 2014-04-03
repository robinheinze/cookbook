class Tag < ActiveRecord::Base
  has_many :recipes, through: :recipes_tags
  validates :name, presence: true
end
