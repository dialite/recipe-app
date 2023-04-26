require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject do
    described_class.new(name: 'Vegetables', preparation_time: 30, cooking_time: 40,
                        description: 'Well nourished recipe on vegetables', public: false)
  end

  it 'validates presence of name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'validates presence of description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'validates that preparation_time is a positive integer' do
    subject.preparation_time = -1
    expect(subject).to_not be_valid
    subject.preparation_time = 1.5
    expect(subject).to_not be_valid
    subject.preparation_time = 0
    expect(subject).to_not be_valid
  end

  it 'validates that cooking_time is a positive integer' do
    subject.cooking_time = -1
    expect(subject).to_not be_valid
    subject.cooking_time = 1.5
    expect(subject).to_not be_valid
    subject.cooking_time = 0
    expect(subject).to_not be_valid
  end
end
