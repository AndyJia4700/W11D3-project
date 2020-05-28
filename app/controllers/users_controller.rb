class UsersController < ApplicationController


  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
    #   redirect_to user_url(@user)
    else
      # Tell the user that something went wrong. Let them try again.
    #   flash.now[:errors] = @user.errors.full_messages
      render :json
    end
  end

  # def search
  #   @users = User.where("username LIKE '%#{params[:query]}%'")
  #   render json: @users
  # end

  private

  def user_params
    # params.require(:user).permit(:username, :email)
    # Add password
    params.require(:user).permit(:username, :email, :password)
  end
end
