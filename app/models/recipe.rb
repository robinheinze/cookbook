class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags
  validates :name, presence: true
  validates :content, presence: true
end
