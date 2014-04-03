require 'spec_helper'

describe Recipe do
  it { should have_many :tags }
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
end
