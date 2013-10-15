require 'bike'

describe Bike do

  it 'should be working when first rented' do
    bike = Bike.new
    expect(bike).not_to be_broken
  end
end