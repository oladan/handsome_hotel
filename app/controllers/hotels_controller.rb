class HotelsController < ApplicationController
  def new
    @hotel = Hotel.new
    @hotel.build_location
  end

  def create
    @hotel = Hotel.new(hotel_params)
    @hotel.user_id = current_user.id
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
    #@hotels = Hotel.paginate(:page => params[:page], :per_page => 5)
    #@hotels = Hotel.paginate(:page => params[:page], :per_page => 5).join(:rate_average_without_dimension).order('rate_average_without_dimension.avg DESC')
    #@hotels = Hotel.paginate(:page => params[:page], :per_page => 5).joins(:rate_average_without_dimension).order('rating_caches.avg DESC')
    #@hotels = Hotel.paginate(:page => params[:page], :per_page => 5).find(:all, 
    #:joins => "LEFT JOIN 'rating_caches' ON rating_caches.cacheable_id = hotels.id",
    #:order => "rating_caches.avg DESC")
    @hotels = Hotel.paginate(:page => params[:page], :per_page => 5).
    joins("LEFT JOIN 'rating_caches' ON rating_caches.cacheable_id = hotels.id").
    order('rating_caches.avg DESC')

  end

  private
    def hotel_params
      params.require(:hotel).permit(:title, :breakfast, :price, :description, 
      :star_rating, :photo, location_attributes: [:address])
    end

end
