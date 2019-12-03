class SessionController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create

  def create
    p auth_hash[:extra][:raw_info][:avatar_url]
    user = User.find_or_create_by(:uid => auth_hash[:uid], picture_url: auth_hash[:extra][:raw_info][:avatar_url]) do |user|
      user.full_name = auth_hash[:info][:name]
    end
    session[:user_id] = user.id

    redirect_to "/users/#{current_user.id}"
  end

  def destroy
    session_logout

    redirect_to root_path
  end

  private
  def auth_hash
    request.env["omniauth.auth"]
  end

end
