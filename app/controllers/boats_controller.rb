class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(params[:id])
    @boat.save
  end

  private

  def boat_params
    params.require(:boat).permit(:name, )
end
