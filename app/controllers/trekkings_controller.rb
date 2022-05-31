class TrekkingsController < ApplicationController
  def index
    @trekkings = Trekking.all
  end

  def new
    @trekking = Trekking.new
  end

  def create
    @trekking = Trekking.new(trekking_params)
    if @trekking.save
      redirect_to @trekking, notice: "trakking was created"
    else
      render :new
    end
  end

  private

  def trekking_params
    params.require(:trekking).permit(:name, :price, :category, :url_image)
  end
end
