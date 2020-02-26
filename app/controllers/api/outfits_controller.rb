class Api::OutfitsController < ApplicationController
  def index
    @outfit = current_user.outfits.find(Outfit.pluck(:id).sample)
  end
end

# @outfits = Outfit.where(id: params[:tag_id], user_id: current_user.id).order(created_at: :desc)