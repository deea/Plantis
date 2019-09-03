class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow]

  def index
    @users = policy_scope(User).order(seeds: :desc).where.not(id: current_user.id)
    @users = @users.search_by_firstname_and_lastname_and_email(params[:navsearch]) if params[:navsearch].present?

  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def follow
    if current_user.follow(@user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
    authorize current_user
  end

  def unfollow
    if current_user.unfollow(@user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render action: :follow }
      end
    end
    authorize current_user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
