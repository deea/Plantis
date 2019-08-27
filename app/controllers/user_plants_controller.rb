class UserPlantsController < ApplicationController
  def index
    @user_plants = User_Plant.all
  end

  def show
  end

  private
  def set_plant
    @user_plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :photo, :last_watered)
  end
end
