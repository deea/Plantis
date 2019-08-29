class UserPlantsController < ApplicationController
  before_action :set_plant, only: [:show, :water_plant]

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
    @user_plant = UserPlant.new(user_plant_params)
    @user_plant.user = current_user
    authorize @user_plant
    if @user_plant.save
      redirect_to my_jungle_path
    else
      render :new
    end
  end

  def my_jungle
    @user_plants = current_user.user_plants
  end

  def water_plant
    authorize @user_plant
    @user_plant.update(last_watered: Date.today)
    @user_plant.user.update(seeds: @user_plant.user.seeds + 20)
    redirect_to user_plants_path
  end

  private

  def set_plant
    @user_plant = UserPlant.find(params[:id])
  end

  def user_plant_params
    params.require(:user_plant).permit(:nickname, :photo, :last_watered, :plant_id, :user_id)
  end
end
