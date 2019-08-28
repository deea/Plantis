class UserPlantsController < ApplicationController
  def index
    @user_plants = User_Plant.all
  end

  def show
  end

  def new
    @user_plant = UserPlant.new
    if params[:plant_id]
      @plant = Plant.find(params[:plant_id])
    else
      redirect_to plants_path
    end
  end

  def create
    @user_plant = UserPlant.new(user_plant_params)
    @user_plant.user = current_user
    if @user_plant.save
      redirect_to my_jungle_path
    else
      render :new
    end
  end

  private

  def set_plant
    @user_plant = Plant.find(params[:id])
  end

  def user_plant_params
    params.require(:user_plant).permit(:nickname, :photo, :last_watered, :plant_id, :user_id)
  end
end
