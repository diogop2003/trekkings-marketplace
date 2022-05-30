class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.save
  end

  private

  def order_params
    params.require(:order).permit(:address)
  end
end