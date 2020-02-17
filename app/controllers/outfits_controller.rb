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
    @tag = Tag.create(outfit_params[:tag])
    @tag.save
    @outfit = Outfit.create(outfit_params)
    @outfit.save
    binding.pry
    redirect_to outfits_path
  end

  private
  def outfit_params
    params.require(:outfit).permit(:name, :image, :user_id, :tag)
  end
  end