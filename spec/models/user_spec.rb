# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'ユーザーネーム、メールアドレス、パスワードが有効である' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'メールアドレスが無い場合無効である' do
    user = build(:user, email: '')
    expect(user).to_not be_valid
  end

  it 'メールアドレスが重複する場合は無効である' do
    user1 = create(:user)
    user2 = build(:user, email: user1.email)
    expect(user2).to_not be_valid
  end

  it 'ユーザーネームが無い場合無効' do
    user = build(:user, name: '')
    expect(user).to_not be_valid
  end

  it 'ユーザーネームが重複する場合は無効' do
    user1 = create(:user)
    user2 = build(:user, name: user1.name)
    expect(user2).to_not be_valid
  end
end