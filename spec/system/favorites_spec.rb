# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Favorite', type: :system do

  context 'チームをお気に入り登録する' do
    before do
      league = create(:league)
      team1 = create(:team)
      team2 = create(:team, id: 2, name: 'チームB', league_id: '1')
      match = create(:match)
      visit '/users/sign_in'
      user = create(:user)
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_on 'Log in'
    end

    scenario 'チーム一覧が表示されている' do
      visit '/teams'
      expect(page).to have_content('プレミアリーグ')
      expect(page).to have_content('チームA')
    end

    scenario '登録ボタンが表示されている' do
      visit '/teams'
      expect(page).to have_button('登録')
    end

    scenario '登録ボタンを押す' do
      visit '/teams'
      click_button '登録', match: :first
      expect(page).to have_content('お気に入りチーム')
      expect(page).to have_content('チームA')

    end

    scenario 'お気に入りチームの試合が表示される' do
      visit '/teams'
      click_button '登録', match: :first
      expect(page).to have_content('お気に入りチーム')
      expect(page).to have_content('チームA')

      visit '/matches'
      expect(page).to have_content('チームA')
      expect(page).to have_content('チームB')
      expect(page).to have_content('スタジアムA')
      expect(page).to have_content('2100/01/01')
    end
  end
end
