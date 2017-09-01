require 'DockingStation'
require 'Bike'

RSpec.describe DockingStation do
  describe '#release_bike' do
    it 'release a working bike' do
      bike = subject.release_bike

      expect(bike).to be_instance_of(Bike)
      expect(bike).to be_working
    end
  end

  describe '#dock' do
    it 'docks a bike at the docking station' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.dock(bike)).to eq(bike)
    end
  end

  describe '#bike' do
    it 'returns bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq(bike)
    end
  end

  describe '#no_bike_error' do
    it 'raise an error' do
      expect { subject.no_bike_error }.to raise_error("cannot release bike")
    end
  end

end
