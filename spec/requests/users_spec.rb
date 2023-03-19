require 'rails_helper'

RSpec.describe 'Log in page', type: :system do
  describe 'users/signin' do
    before(:each) do
      @user = User.create!(name: 'user', email: 'user@example.com', password: 'password')
      @user.skip_confirmation!
      @user.save!
      visit new_user_session_path
    end

    after(:each) do
      sleep(2)
    end

    it 'displays email and password input field and submit button' do
      expect(page).to have_field('Email')
      expect(page).to have_field('Password')
      expect(page).to have_button('Log in')
    end

    it 'displays detail error with empty credentials' do
      fill_in 'Email', with: ''
      fill_in 'Password', with: ''
      click_button 'Log in'
      expect(page).to have_content('Log in')
    end

    it 'displays error message with invalid credentials' do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'wrong_password'
      click_button 'Log in'
      expect(page).to have_content('Sign up')
    end

    it 'Successfully logs in with correct credentials' do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      expect(page).to have_content('Signed in successfully.')
    end

    it 'click on `Forgot your password?`' do
      click_link 'Forgot your password?'
      expect(page).to have_current_path new_user_password_path
    end

    it 'click on `Didn`t receive confirmation instructions?`' do
      click_link "Didn't receive confirmation instructions?"
      expect(page).to have_current_path new_user_confirmation_path
    end
  end
end
