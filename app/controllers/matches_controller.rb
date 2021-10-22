# frozen_string_literal: true

class MatchesController < ApplicationController
  before_action :set_match, only: %i[show edit update destroy]

  def index
    @matches = Match.all
  end

  def show; end

  def new
    @match = Match.new
  end

  def edit; end

  def create
    @match = Match.new(match_params)

    if @match.save
      redirect_to @match, notice: 'Match was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @match.update(match_params)
      redirect_to @match, notice: 'Match was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @match.destroy
    redirect_to matches_url, notice: 'Match was successfully destroyed.'
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

  def match_params
    params.require(:match).permit(:date, :stadium, :home_team_score, :away_team_score)
  end
end
