class ReviewsController < ApplicationController
  before_action :find_product, only: [:edit, :update, :create]

  before_action :find_review, only: [:edit, :update, :destroy]

  def create
    # BEFORE ACTION PRODUCT FIND
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
    @reviews = @product.reviews

    if @review.save
        flash[:notice] = "You have successfully added a new review."
      redirect_to product_path(@product)
    else
      render '/products/show'
    end
  end

  def edit
    # before action!
  end

  def update
    # BEFORE ACTIONS
    @review.comment = params[:review][:comment]
    if @review.save
      flash[:notice] = "You have successfully updated the review."
      redirect_to product_path(@product.id)
    else
      render 'edit'
    end
  end

  def destroy
  end


# BEFORE ACTIONS!!!
  def find_product
    @product = Product.find(params[:product_id])
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
