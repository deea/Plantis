class UserPlantsController < ApplicationController
  before_action :set_plant, only: [:show, :water_plant, :water_anyway, :destroy]

  def index
    @user_plants = policy_scope(UserPlant).order(created_at: :desc)
    @users = User.where.not(id: current_user.id)
    @activities = PublicActivity::Activity.where(owner_id: current_user.following_ids)
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
    authorize @user_plant
    if @user_plant.save
      redirect_to user_plants_path
    end
  end

  def destroy
    authorize @user_plant
    @user_plant.destroy
    redirect_to user_plants_path
  end

  def my_jungle
    @user_plants = current_user.user_plants
  end

  def water_plant
    authorize @user_plant
    @user_plant.update(last_watered: Date.today)
    @user_plant.create_activity key: 'user_plant.water_plant', owner: current_user
    @user_plant.user.earn_seeds(20)
    @user_plant.user.user_level
    redirect_to user_plants_path
  end

  def water_anyway
    authorize @user_plant
    @user_plant.update(last_watered: Date.today)
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
