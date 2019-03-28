class Api::OrdersController < ApplicationController
  

  def create
    item = Item.find_by(id: params[:item_id])
    quantity = params[:quantity].to_i
    calculated_subtotal = item.price * quantity
    caluclated_tax = item.tax * quantity
    calculated_total = item.total * quantity
    @order = Order.new(
      user_id: current_user.id,
      item_id: params[:item_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: caluclated_tax,
      total: calculated_total
      )
    @order.save
    render "show.json.jbuilder"


  end
end
