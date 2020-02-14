class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
    
  end

  def show
  end

  def edit
  end

  def create
    @outfit = Outfit.find(outfit_params)
    @outfit.save
    redirect_to outfits_path
  end

  private
  def outfit_params
    params.require(:outfit).permit(:name, :image, :user_id)
  end
end
