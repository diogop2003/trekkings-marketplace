class OrdersController < ApplicationController
  # def index
  #   @orders = policy_scope(Order)
  # end

  def new
    @order = Order.new
    @trekking = Trekking.find(params[:trekking_id])
    authorize @order
  end

  def create
    @order = Order.new(order_params)
    authorize @order
    @trekking = Trekking.find(params[:trekking_id])
    @order.trekking = @trekking
    @order.user = current_user
    if @order.save
      redirect_to my_orders_path
    else
      render :new
    end
  end

  def my
    @orders = policy_scope(Order)
  end

  private

  def order_params
    params.require(:order).permit(:address)
  end
end
