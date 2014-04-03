class Recipe < ActiveRecord::Base
  has_many :tags, through: :recipes_tags
  validates :name, presence: true
  validates :content, presence: true
end
