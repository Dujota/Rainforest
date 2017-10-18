class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update]
  before_action :new_product, only: [:new, :create]

  def index
    @products = Product.all
  end

  def create
    #see before action
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]

    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def new
    #see before action
  end

  def edit
    # see before action
  end

  def show
    #see before action
  end

  def update
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]

    if @product.save
      redirect_to product_path(@product.id)
    else
      render 'edit'
    end
  end

  def destroy
    #code
  end

  # Keeping the Code DRY by defining the loaction of each product in a mehtod
  def find_product
    @product = Product.find(params[:id])
  end

  def new_product
    @product = Product.new
  end

end
