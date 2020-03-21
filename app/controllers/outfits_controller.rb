class OutfitsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_tag
  
  def index
    # @outfit = Outfit.find(Outfit.pluck(:id).sample)
    @outfits = current_user.outfits
    # @outfits = Outfit.where(id: params[:tag_id], user_id: current_user.id).order(created_at: :desc)
    # @outfit_tag = Tag.new
  end

  def new
    @outfit = Outfit.new
    # @outfit_tag = Tag.new
  end

  def show
    @outfit = Outfit.find(params[:id])
    # @tag = @outfit.tags.find_by(params[:tagname])
  end

  def edit
    @outfit = Outfit.find(params[:id])
    # @outfit_tag = Outfit.new.tags.build
  end

  def create
    if params[:commit] == "追加する"
      # @tag = Tag.create(tag_params)
      @outfit = Outfit.new(outfit_params)
      # if @outfit.save && @tag.save
      if @outfit.save!
        redirect_to outfits_path, notice: "新しいコーデを作成しました。"
      else
        redirect_to outfits_path, notice: "作成に失敗しました。"
      end
    # elsif params[:commit] == "追加"
    #   @outfit_tag = Tag.new(tag_params)
    #   if @outfit_tag.save
    #     redirect_to outfits_path, notice: "新しいカテゴリーを作成しました。"
    #   else
    #     redirect_to outfits_path, notice: "作成に失敗しました。"
      # end
    end
  end

  def update
    outfit = Outfit.find(params[:id])
    outfit.update(outfit_params)
    redirect_to outfits_path, notice: "コーデを更新しました。"
  end

  def destroy
    outfit = Outfit.find(params[:id])
    outfit.destroy
    redirect_to outfits_path, notice: "コーデを削除しました。"
  end

  private
    def outfit_params
      params.require(:outfit).permit(:name, :image, :tag_id).merge(user_id: current_user.id)
    end
    def tag_params
      params.require(:tag).permit(:tagname)
    end
  end