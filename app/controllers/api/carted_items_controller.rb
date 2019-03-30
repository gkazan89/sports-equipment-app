class Api::CartedItemsController < ApplicationController
  before_action :authenticate_user

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

end
