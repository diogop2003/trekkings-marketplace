class TrekkingsController < ApplicationController
  def index
    @trekkings = Trekking.all
  end

  def new
    @trekking = Trekking.new
  end

  def create
    @trekking = Trekking.new(trekking_params)
    @trekking.save
  end

  private

  def trekking_params
    params.require(:trekking).permit(:name, :price, :category)
  end
end
