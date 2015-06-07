class CropsController < ApplicationController

  def new
    @crop = Crop.new
  end

  def create
    @crop = Crop.create(crop_params)
    if @crop.valid?
      redirect_to @crop
    else
      render :new
    end

  end

  def show
    @crop = Crop.find(params[:id])
  end

  private

  def crop_params
    params.require(:crop).permit(:name, :description)
  end

end
