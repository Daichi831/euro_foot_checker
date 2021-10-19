# frozen_string_literal: true

class LeaguesController < ApplicationController
  before_action :set_league, only: %i[show edit update destroy]

  def index
    @leagues = League.all
  end

  def show; end

  def new
    @league = League.new
  end

  def edit; end

  def create
    @league = League.new(league_params)
    if @league.save
      redirect_to @league, notice: 'League was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @league.update(league_params)
      redirect_to @league, notice: 'League was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @league.destroy
    redirect_to leagues_url, notice: 'League was successfully destroyed.'
  end

  private

  def set_league
    @league = League.find(params[:id])
  end

  def league_params
    params.require(:league).permit(:name)
  end
end
