class BiomeController < ApplicationController

  def index
    @biomes = Biome.all
    @biomes = Biome.paginate(:page => params[:page])
  end

  def create
    @biome = Biome.new(biome_params)
    @biome.save
  end

  def show
  end

  def biome_params
    params.require(:biome).permit(:name, :description)
  end

end
