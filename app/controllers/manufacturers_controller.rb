class ManufacturersController < ApplicationController

    def index
        @manufacturers = Manufacturer.all.order(id: :asc)
    end

    def new
        @manufacturer = Manufacturer.new
    end

    def create
        whitelisted_params = params.require(:manufacturer).permit(:name, :location)
        manufacturer = Manufacturer.create(whitelisted_params)
        redirect_to manufacturer_path(manufacturer.id)
    end

    def show
        id = params[:id].to_i
        @manufacturer = Manufacturer.find(id)
    end

    def edit
        id = params[:id].to_i
        @manufacturer = Manufacturer.find(id)
    end

    def update

        id = params[:id].to_i
        manufacturer = Manufacturer.find(id)
        whitelisted_params = params.require(:manufacturer).permit(:name, :location)
        manufacturer.update(whitelisted_params)
        redirect_to manufacturer_path(id)

    end

    def destroy
        id = params[:id].to_i
        Manufacturer.find(id).destroy
        redirect_to manufacturers_path
    end

end