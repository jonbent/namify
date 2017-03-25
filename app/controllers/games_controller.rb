class GamesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    @i = 0
    current_user = User.first
    @association = Association.find(params[:association_id])
    @game = Game.new
    @users = User.where(cohort: current_user.cohort).compact
    @users.delete current_user
  end

  def create
    @association = Association.find(params[:association_id])
    current_user = User.first
    @game = Game.new
    @game.guesses =  params[:clues]
    @game.correct_checker
    @game.user_id = current_user.id
    if @game.save
      redirect_to association_game_path(@association, @game)
    end
  end

  def show
    @game = Game.find(params[:id])
    
  end

end
