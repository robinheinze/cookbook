require 'spec_helper'

describe Recipe do
  it { should have_and_belong_to_many :tags }
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }

  describe '#average_rating' do
    it 'returns the average of all ratings for this recipe' do
      recipe1 = Recipe.create(:name => 'cookies', :content => 'sugar')
      rating1 = Rating.create(:value => 5, :recipe_id => recipe1.id)
      rating2 = recipe1.ratings.create(:value => 3)
      recipe1.average_rating.should eq 4
    end
  end
end
