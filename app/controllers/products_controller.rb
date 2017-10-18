class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    #code
    @product = Product.new
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
    @product = Product.new
  end

  def edit
    #code
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    #code
  end

  def destroy
    #code
  end

end
