class RemoveRating < ActiveRecord::Migration
  def change
    remove_column :recipes, :rating
  end
end
