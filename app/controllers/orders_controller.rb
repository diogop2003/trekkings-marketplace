class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @trekking = Trekking.find(params[:trekking_id])
    @order = Order.new(trekking: @trekking, user: current.user)
    # authorize @order
    @order.save
  end

  private

  def order_params
    params.require(:order).permit(:address)
  end
end
