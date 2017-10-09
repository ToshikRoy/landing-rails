class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(user_params)
  if @user.save
    flash[:success] = "Welcome to the Sample App!"
    redirect_to welcome_path
  else
    render 'new'
  end
end


  private

   def user_params
     params.require(:user).permit(:sex, :first_name, :second_name, :email, :age, :phone_number, :time, :adress, :city_index, :city_name)
   end
end
