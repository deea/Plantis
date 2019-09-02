class LikesController < ApplicationController
  skip_after_action :verify_authorized
  def like
    @activity = PublicActivity::Activity.find(params[:id])
    @activity.liked_by current_user
  end
end
