require 'spec_helper'
require 'rails_helper'
require 'shoulda'
require 'rspec'

describe Company do
  it {should have_many(:responses)}
end
