# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'User', type: :system do
  scenario 'サインアップ' do
    visit '/users/sign_up'
    expect(current_path).to eq '/users/sign_up'
    fill_in 'Eメール', with: 'Taro@example.com'
    fill_in 'パスワード', with: 'tarotaro'
    fill_in 'パスワード（確認用）', with: 'tarotaro'
    click_on '新規登録'
    expect(page).to have_content('本人確認用のメールを送信しました。メール内のリンクからアカウントを有効化させてください。')
  end

  scenario 'メールアドレスとパスワードでログイン' do
    user = create(:user)
    visit '/users/sign_in'
    expect(current_path).to eq '/users/sign_in'
    fill_in 'Eメール', with: user.email
    fill_in 'パスワード', with: user.password
    click_on 'ログイン'
    expect(page).to have_content('ログインしました。')
  end

end
