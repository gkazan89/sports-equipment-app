class Api::ItemsController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @items = Item.all
    search_terms = params[:search]
    if search_terms
      @items = @items.where("name ILIKE ?", "%" + search_terms + "%")
    end

    category_name = params[:category]
    if category_name
      @items = Category.find_by(name: category_name).items
    end

    if params[:sort_by_price]
      @items = @items.order(price: :asc)
    else
      @items = @items.order(id: :asc)
    end
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
      supplier_id: params[:supplier_id]
      )
    if @item.save
      render "show.json.jbuilder"
    else
      render json:  {errors: @item.errors.full_messages}, statis: :unprocessable_entity
    end
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.name = params[:name] || @item.name
    @item.sport = params[:sport] || @item.sport
    @item.price = params[:price] || @item.price
    if @item.save
      render "show.json.jbuilder"
    else
      render json:  {errors: @item.errors.full_messages}, statis: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    render json: {message: "Item destroyed"}
  end

end
