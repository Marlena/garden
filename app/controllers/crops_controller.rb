class CropsController < ApplicationController

  def new
    @crop = Crop.new
  end

  def create
    @crop = Crop.create(crop_params)
    render :new
  end

  def show
    @crop = Crop.find(params[:id])
  end

  private

  def crop_params
    params.require(:crop).permit(:name, :description)
  end

end
