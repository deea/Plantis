class UserPlantsController < ApplicationController
  def new
    @user_plant = UserPlant.new
    if params[:plant_id]
      @plant = Plant.find(params[:plant_id])
    else
      redirect_to plants_path
    end
  end

  def create
    @user_plant = Plant.new(user_plant_params)
    if @user_plant.save
      redirect_to my_jungle_path
    else
      render :new
    end
  end

  private

  def plant_params
    params.require(:user_plant).permit(:name, :photo, :last_watered)
  end
end
