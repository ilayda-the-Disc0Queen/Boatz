class BoatsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR location ILIKE :query"
      @boats = Boat.where(sql_query, query: "%#{params[:query]}%")
    else
      @boats = Boat.all
    end
  end

  def show
    @boat = Boat.find(params[:id])
    @markers =
      [{
        lat: @boat.latitude,
        lng: @boat.longitude,
      }]
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
      redirect_to boat_path(@boat)
    else
      render new
    end
  end
  
  def my_boats
    @boats = current_user.boats
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to my_boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :price, :location, :description, :image)
  end
end
