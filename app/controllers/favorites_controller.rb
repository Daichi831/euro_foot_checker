# frozen_string_literal: true

class FavoritesController < ApplicationController
  before_action :set_team, only: %i[create destroy]

  def create
    p "----------------------"
    p "お気に入り登録したチーム"
    p @team
    p "----------------------"
    current_user.favorite(@team)
    redirect_to root_path, success: 'お気に入り登録しました'
  end

  def destroy
    p "----------------------"
    p "お気に入り解除したチーム"
    p @team
    p "----------------------"
    current_user.unfavorite(@team)
    redirect_to root_path, success: 'お気に入り登録を解除しました'
  end

  private

  def set_team
    @team = Team.find(params[:team_id])
  end
end
