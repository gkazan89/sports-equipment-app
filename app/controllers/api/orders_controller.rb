class Api::OrdersController < ApplicationController
  before_action :authenticate_user


  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  def create
    @order = Order.new(
      user_id: current_user.id
      )
    @order.save
    carted_items = current_user.carted_items.where(status: "carted")
    carted_items.update_all(status: "purchased", order_id: @order.id)
    @order.update_all_totals
    render "show.json.jbuilder"
  end
end
