class OutfitsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @outfits = Outfit.all
    @tags = Tag.all
  end

  def new
    @outfit = Outfit.new
    @tag = Tag.new
  end

  def show
  end

  def edit
  end

  def create
    @outfit = Outfit.create(outfit_params)
    @outfit.save
    @tag = Tag.create(outfit_params[:tag_attributes])
    @tag.save
    binding.pry
    redirect_to outfits_path
  end

  private
    def outfit_params
      params.require(:outfit).permit(:name, :image, tag_attributes:[:id, :tagname]).merge(user_id: current_user.id)
    end
    # def tag_params
    #   params.require(:tag).permit(:id, :tagname)
    # end
  end