class UserPlantsController < ApplicationController
  def index
    @user_plants = policy_scope(UserPlant).order(created_at: :desc)
  end

  def show
  end

  def new
    @user_plant = UserPlant.new(user: current_user)
    if params[:plant_id]
      @plant = Plant.find(params[:plant_id])
    else
      redirect_to plants_path
    end
    authorize @user_plant
  end

  def create
    @user_plant = Plant.new(user_plant_params)
    if @user_plant.save
      redirect_to my_jungle_path
    else
      render :new
    end
    authorize @user_plant
  end

  def my_jungle
    @user_plants = current_user.user_plants
  end

  private
  def set_plant
    @user_plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :photo, :last_watered)
  end
end
