require 'bike'

describe Bike do

  let(:bike) { Bike.new }

  it 'should be working when first rented' do
    expect(bike).not_to be_broken
  end

  it "can be broken" do 
    bike.break!
    expect(bike).to be_broken
  end

  it 'can be fixed' do
    bike.break!
    bike.fix!
    expect(bike).not_to be_broken
  end

end