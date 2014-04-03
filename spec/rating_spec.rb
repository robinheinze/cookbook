require 'spec_helper'

describe Rating do
  it { should validate_presence_of :value }
  it { should validate_presence_of :recipe_id }

  it { should belong_to :recipe }
end
