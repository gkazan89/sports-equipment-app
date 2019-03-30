class Api::OrdersController < ApplicationController
  before_action :authenticate_user


  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  def create

    carted_items = current_user.carted_items.where(status: "carted")

    calculated_subtotal = 0
    caluclated_tax = 0
    calculated_total = 0

    carted_items.each do |carted_item|
      calculated_subtotal += carted_item.item.price * carted_item.quantity
      caluclated_tax += carted_item.item.tax * carted_item.quantity
      calculated_total += carted_item.item.total * carted_item.quantity
    end

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: caluclated_tax,
      total: calculated_total
      )
    @order.save
    carted_items.each do |carted_item|
      carted_item.status = "purchased"
      carted_item.order_id = @order.id
      carted_item.save
    end
    render "show.json.jbuilder"
  end
end
