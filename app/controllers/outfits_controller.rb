class OutfitsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @outfits = current_user.outfits
  end

  def new
    @outfit = Outfit.new
    @outfit.tags.build
  end

  def show
    @outfit = Outfit.find(params[:id])
    @tag = @outfit.tags.find_by(params[:tagname])
  end

  def edit
  end

  def create
    @outfit = Outfit.create(outfit_params)
    @outfit.save
    redirect_to outfits_path
  end

  def update
    outfit = Outfit.find(params[:id])
    outfit.update(outfit_params)
  end

  def destroy
    outfit = Outfit.find(params[:id])
    outfit.destroy
    redirect_to outfits_path
  end

  private
    def outfit_params
      params.require(:outfit).permit(:name, :image, tags_attributes:[:tagname]).merge(user_id: current_user.id)
    end
  end