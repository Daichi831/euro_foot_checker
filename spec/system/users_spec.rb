# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'User', type: :system do
  scenario 'サインアップ' do
    visit '/users/sign_up'
    expect(current_path).to eq '/users/sign_up'
    fill_in 'Name', with: 'Taro'
    fill_in 'Email', with: 'Taro@example.com'
    fill_in 'Password', with: 'tarotaro'
    fill_in 'Password confirmation', with: 'tarotaro'
    click_on 'Sign up'
    expect(page).to have_content('お気に入りチーム選択へ')
  end

  scenario 'メールアドレスとパスワードでログイン' do
    user = create(:user)
    visit '/users/sign_in'
    expect(current_path).to eq '/users/sign_in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'
    expect(page).to have_content('お気に入りチーム選択へ')
  end

end
