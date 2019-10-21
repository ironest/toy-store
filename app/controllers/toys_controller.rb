class ToysController < ApplicationController

    def index
        @toys = Toy.all.order(posted: :asc)
    end

    def new
        @toy = Toy.new
    end

    def create
        whitelisted_params = params.require(:toy).permit(:name, :description, :posted, :user)
        toy = Toy.create(whitelisted_params)
        redirect_to toy_path(toy.id)
    end

    def show
        id = params[:id].to_i
        @toy = Toy.find(id)
    end

    def edit
        id = params[:id].to_i
        @toy = Toy.find(id)
        @options = User.pluck(:email).zip(User.pluck(:id))
    end

    def update

        id = params[:id].to_i
        toy = Toy.find(id)

        whitelisted_params = params.require(:toy).permit(:name, :description, :posted, :user_id)

        toy.update(whitelisted_params)
        redirect_to toy_path(id)

    end

    def destroy
        id = params[:id].to_i
        Toy.find(id).destroy
        redirect_to toys_path
    end

end