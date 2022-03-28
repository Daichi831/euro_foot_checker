# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Favorite', type: :system do

  describe 'チーム一覧からチームをお気に入り登録する' do
    before do
      league = create(:league)
      team1 = create(:team)
      team2 = create(:team, id: 2, name: 'チームB', league_id: '1')
      match = create(:match)
      visit '/users/sign_in'
      user = create(:user)
      fill_in 'Eメール', with: user.email
      fill_in 'パスワード', with: user.password
      click_on 'ログイン'
      visit '/teams'
    end

    describe 'チーム一覧が表示されている' do
      it 'チームAが表示されている' do
        expect(page).to have_content('チームA')
      end
      it 'チームBが表示されている' do
        expect(page).to have_content('チームB')
      end
    end

    it '登録ボタンが表示されている' do
      expect(page).to have_button('登録')
    end

    describe 'チームを登録し試合が表示される' do
      it 'お気に入り登録する' do
        click_button '登録', match: :first
        expect(page).to have_content('チームA')
      end

      describe '試合結果が表示される' do
        before do
          click_button '登録', match: :first
          visit '/matches'
        end
        it 'チームAが表示' do
          expect(page).to have_content('チームA')
        end
        it 'チームBが表示' do
          expect(page).to have_content('チームA')
        end
        it '日時が表示' do
          expect(page).to have_content('2100/01/01')
        end
        it 'スタジアムが表示' do
          expect(page).to have_content('スタジアムA')
        end
      end
    end
  end
end
