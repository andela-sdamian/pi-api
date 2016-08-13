require 'rails_helper'

describe 'TemperatureController', type: :controller do
  describe '#create' do
    context 'when the record in the DB is less than 100' do
      it 'does not delete the record' do
        5.times do |i|
          Temperature.create(reading: i)
        end

        expect(Temperature.first.reading).to eq 0.0
        expect(Temperature.all.size).to eq 5
      end
    end

    context 'when the record in the DB is above 100' do
      it 'deletes the first record' do
        100.times do |i|
          Temperature.create(reading: i)
        end

        Temperature.create(reading: 67.0)

        expect(Temperature.first.reading).not_to eq 0.0
        expect(Temperature.all.size).to eq 100
      end
    end

    context 'when the record is the DB is above 100' do
      it 'ensures there are only 100 records in the DB' do
        200.times { |i| Temperature.create(reading: i) }

        Temperature.create(reading: 67.0)
        expect(Temperature.first.reading).not_to eq 0.0
        expect(Temperature.all.size).to eq 100
      end
    end
  end
end
