require 'rails_helper'

RSpec.feature 'Users', type: :request do
  before(:each) do
    @user = User.new(name: 'tamana', email: 'tamana.balkhi1377@gmail.com', password: '123456',
                     password_confirmation: '123456')
  end

  it 'is valid with a name' do
    expect(@user.name).to eq('tamana')
  end

  it 'is not valid without a name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'is not valid an invalid email' do
    @user.email = "#{'a' * 244}.com"
    expect(@user).to_not be_valid
  end

  it 'is not valid without a password less than 6 characters' do
    @user.password = 'a' * 4
    expect(@user).to_not be_valid
  end

  it 'is valid with a name, an email, and a password' do
    expect(@user).to be_valid
  end
end
