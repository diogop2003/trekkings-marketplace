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
    @order.save
  end

  def my
    @orders = policy_scope(Order)
  #  @order = Order.where(user: current_user)
  #  authorize @order
  end

  private

  def order_params
    params.require(:order).permit(:address)
  end
end
