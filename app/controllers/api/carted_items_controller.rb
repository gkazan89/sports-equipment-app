class Api::CartedItemsController < ApplicationController
  before_action :authenticate_user

  def index
    @carted_items = current_user.carted_items.where(status: "carted")
    render "index.json.jbuilder"
  end

  def create
    @carted_item = CartedItem.new(
      user_id: current_user.id,
      item_id: params[:item_id],
      quantity: params[:quantity],
      status: "carted"
      )
    @carted_item.save
    render "show.json.jbuilder"
  end

  def destroy
    carted_item = CartedItem.find_by(id: params[:id])
    carted_item.status = "removed"
    carted_item.save
    render json: {message: "Successfully removed carted item!"}
  end

end
