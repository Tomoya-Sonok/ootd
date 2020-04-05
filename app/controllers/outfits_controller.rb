class OutfitsController < ApplicationController
  before_action :authenticate
  
  def index
    @outfits = Outfit.where(user_id: current_user.id)
    @moods = Mood.where(user_id: current_user.id)
    @mood = Mood.new
  end

  def new
    @outfit = Outfit.new
    @moods = Mood.all
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def edit
    @outfit = Outfit.find(params[:id])
    @moods = Mood.all
    @mood = Mood.find(@outfit.mood_id)
  end

  def create
    if params[:commit] == "追加する"
      @outfit = Outfit.new(outfit_params)
      if @outfit.save
        redirect_to outfits_path, notice: "新しいコーデを作成しました。"
      else
        redirect_to new_outfit_path, notice: "作成に失敗しました。"
      end
    elsif params[:commit] == "追加"
      @mood = Mood.new(mood_params)
      if @mood.save
        redirect_to outfits_path, notice: "新しい気分を追加しました。"
      else
        redirect_to outfits_path, notice: "追加に失敗しました。"
      end
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

  def search
    @outfits = Outfit.search(params[:keyword], current_user.id)
    respond_to do |format|
      format.html
      format.json { render 'search', handlers: 'jbuilder' }
    end
  end

  private
    def outfit_params
      params.require(:outfit).permit(:name, :image, :mood_id).merge(user_id: current_user.id)
    end

    def mood_params
      params.require(:mood).permit(:name).merge(user_id: current_user.id)
    end

    def authenticate
      redirect_to new_user_registration_url unless user_signed_in?
    end
  end
