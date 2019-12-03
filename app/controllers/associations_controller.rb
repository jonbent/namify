class AssociationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    current_user = User.first
    @users = User.where(cohort: current_user.cohort).compact
    @association = Association.new
    @users.delete current_user
  end

  def create
    current_user = User.first
    @association = Association.new(user_id: current_user.id, clues: params[:clues])
    p @association
    @association.save
    p @association.errors.full_messages
    redirect_to new_association_game_path(@association)
  end

end
