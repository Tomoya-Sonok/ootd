class OutfitsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @outfits = Outfit.all
    # @tags = Tag.all
  end

  def new
    @outfit = Outfit.new
    @outfit.tags.build
  end

  def show
  end

  def edit
  end

  def create
    @outfit = Outfit.create(outfit_params)
    @outfit.save

    redirect_to outfits_path
  end

  private
    def outfit_params
      params.require(:outfit).permit(:name, :image, tags_attributes:[:tagname]).merge(user_id: current_user.id)
    end
  end