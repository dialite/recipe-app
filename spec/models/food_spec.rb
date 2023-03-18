require 'rails_helper'

RSpec.describe Food, type: :model do
  let(:user) { User.create(name: 'Raymond', email: 'raylight@mail.com', password: '123456789') }
  let(:food) { Food.create(user_id: user.id, name: 'Pizza', measurement_unit: 'kg', price: 12) }

  describe 'Validations' do
    context 'when valid' do
      it { expect(food).to be_valid }
    end

    it 'should allow valid name' do
      food.name = 'Rice'
      expect(food).to_not be 'Pizza'
    end

    it 'should allow valid name' do
      food.name = 'Pizza'
      expect(food).to be_valid
    end

    it 'should validate measurment unit' do
      food.measurement_unit = nil
      expect(food).to_not be_valid
    end

    it 'should validate measurment unit' do
      food.measurement_unit = 'kg'
      expect(food).to be_valid
    end

    it 'should validate price' do
      food.price = -9
      expect(food).to_not be_valid
    end

    it 'should validate price' do
      food.price = 0
      expect(food).to_not be_valid
    end

    it 'should validate price' do
      food.price = 6
      expect(food).to be_valid
    end
  end
end