class Api::OutfitsController < ApplicationController
  def index
    @outfit = Outfit.find(Outfit.pluck(:id).sample)

  end

end