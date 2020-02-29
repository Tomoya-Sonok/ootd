class Api::OutfitsController < ApplicationController
  def index
    @outfit = Outfit.find((Outfit.where(user_id: current_user.id)).pluck(:id).sample)
  end
end

# @outfits = Outfit.where(id: params[:tag_id], user_id: current_user.id).order(created_at: :desc)