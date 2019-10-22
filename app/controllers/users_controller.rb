class UsersController < ApplicationController

    def index
        @users = User.all.order(id: :asc)
    end

    def new
        @user = User.new
    end

    def create
        whitelisted_params = params.require(:user).permit(:email, :password)
        user = User.create(whitelisted_params)
        redirect_to user_path(user.id)
    end

    def show
        id = params[:id].to_i
        @user = User.find(id)
    end

    def edit
        id = params[:id].to_i
        @user = User.find(id)
    end

    def update

        id = params[:id].to_i
        user = User.find(id)
        whitelisted_params = params.require(:user).permit(:email, :password)
        user.update(whitelisted_params)
        redirect_to user_path(id)

    end

    def destroy
        id = params[:id].to_i
        User.find(id).destroy
        redirect_to users_path
    end

end