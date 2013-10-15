require 'bike'

describe Bike do

  it 'should be working when first rented' do
    bike = Bike.new
    expect(bike).not_to be_broken
  end

  it "can be broken" do 
    bike = Bike.new
    bike.break!
    expect(bike).to be_broken
  end
end