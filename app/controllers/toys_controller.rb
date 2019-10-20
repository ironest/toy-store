class ToysController < ApplicationController

    def index
        @toys = Toy.all.order(posted: :asc)
    end

    def new
    end

    def create
    end

    def show
        id = params[:id].to_i
        @toy = Toy.find(id)
    end

    def edit
    end

    def update
    end

    def destroy
    end

end