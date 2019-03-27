class Api::ItemsController < ApplicationController
  def index
    @items = Item.all
    render "index.json.jbuilder"
  end

  def show
    @item = Item.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @item = Item.new(
      name: params[:name],
      sport: params[:sport],
      price: params[:price],
      )
    @item.save
    render "show.json.jbuilder"
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.name = params[:name] || @item.name
    @item.sport = params[:sport] || @item.sport
    @item.price = params[:price] || @item.price
    @item.save
    render "show.json.jbuilder"
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    render json: {message: "Item destroyed"}
  end

end
