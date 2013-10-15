require 'station'

describe DockingStation do

  let (:station) {DockingStation.new}
  let (:bike) { double :bike }


  it 'can accept a bike from a customer' do
    station.accept_from_customer(bike)
    expect(station).to have_bikes
  end

  it 'can be empty' do    
    expect(station).not_to have_bikes
  end

  it 'can release bikes' do
    person = double :person
    station = DockingStation.new([bike])
    station.release_to(person)

    expect(station).not_to have_bikes
  end

  it 'can count how many bikes it has' do
    3.times { station.accept_from_customer(bike) }
    expect(station.count_bikes).to be 3
  end

  it 'has a maximum capacity of 5 by default' do
    5.times { station.accept_from_customer(bike) }
    expect(station).to be_full
  end

  it "won't accept a bike from a customer if full" do
    6.times { station.accept_from_customer(bike) }
    expect(station.count_bikes).to be 5
  end

#  it 'can identify working bikes'


end