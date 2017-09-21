class WinesController < ApplicationController
  def index
    @wines = Wine.order(tasted_on: :asc)
    render json: @wines
  end

  def show
    @wine = Wine.find(params[:id])
    render json: @wine
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      render json: @wine
    else
      render json: @wine, status: :not_acceptable
    end
  end

  def update
    @wine = Wine.find(params[:id])
    if @wine.update(wine_params)
      render json: @wine
    else
      render json: @wine, status: :not_acceptable
    end
  end

  def destroy
    @wine = Wine.find(params[:id])
    @wine.destroy
    render json: @wine
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :price, :variety, :appellation, :winery, :comments, :tasted_on)
  end
end
