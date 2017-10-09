class WelcomeController < ApplicationController
  def show
    @user = User.find(params[:nick_name])
  end
end
