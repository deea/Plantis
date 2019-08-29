class UserPlantsController < ApplicationController
  def index
    @user_plants = policy_scope(UserPlant).order(created_at: :desc)
  end

  def show
  end

  def new
    @user_plant = UserPlant.new(user: current_user)
      if params[:user_plant] && params[:user_plants][:plant_id]
        @plant = Plant.find(params[:user_plant][:plant_id])
      elsif params[:plant_id]
        @plant = Plant.find(params[:plant_id])
      else
        redirect_to plants_path
      end
      
    authorize @user_plant
  end

  def create
    @user_plant = UserPlant.new(user_plant_params)
    @user_plant.user = current_user
    if @user_plant.save
      redirect_to plants_path
    else
      render :new
    end
    authorize @user_plant
  end

  # def water_plants
  #   @user_plant
  #   current_user.addseeds
  #   redirect_to
  # end

  def my_jungle
    @user_plants = current_user.user_plants
  end

  private

  def set_plant
    @user_plant = Plant.find(params[:id])
  end

  def user_plant_params
    params.require(:user_plant).permit(:nickname, :photo, :last_watered, :plant_id, :user_id)
  end
end
