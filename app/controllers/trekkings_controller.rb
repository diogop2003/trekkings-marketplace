class TrekkingsController < ApplicationController
  def index
    @trekkings = policy_scope(Trekking)
    @trekkings = @trekkings.includes(:order).where(order: {id: nil})

    if params[:query].present?
      @trekkings = @trekkings.search_by_name_and_category(params[:query])
    end
  end

  def new
    @trekking = Trekking.new
    authorize @trekking
  end

  def create
    @trekking = Trekking.new(trekking_params)
    @trekking.user = current_user
    authorize @trekking
    if @trekking.save
      redirect_to root_path, notice: "trakking was created"
    else
      render :new
    end
  end

  def destroy
  end

  def show
  end

  def edit
  end

  private

  def trekking_params
    params.require(:trekking).permit(:name, :price, :category, :description, :photo)
  end
end
