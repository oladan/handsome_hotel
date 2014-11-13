class HotelsController < ApplicationController
  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
 
    if @hotel.save
      redirect_to @hotel
    else
      render 'new'
    end
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def index
    @hotels = Hotel.all
  end

  private
    def hotel_params
      params.require(:hotel).permit(:title, :breakfast, :price, :description)
    end

end
