class Api::UsersController < ApplicationController
    before_action :require_logged_in, only:[:index, :show]
    # def new
    #     @user = User.new
    #     render :new
    # end

    # # def show
    # #     @user = User.find(params[:id])
    # #     render :json
    # # end

    # def index
    #     @users = User.all
    #     render :json
    # end

    def create
        @user = User.new(user_params)

        if @user.save
            login!(@user)
            # render :show
            # render :json 
            # redirect_to: api_users_url
        else 
            render json: @user.errors.full_messages, status: 401
        end
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
