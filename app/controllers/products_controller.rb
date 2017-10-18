class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    #code
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
