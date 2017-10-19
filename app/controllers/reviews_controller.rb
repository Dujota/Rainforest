class ReviewsController < ApplicationController
  def create
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews

    if @review.save
        flash[:notice] = "You have successfully added a new review."
      redirect_to product_path(@product)
    else
      render '/products/show'
    end
  end

  def edit
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def update
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
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
    #code
  end

  def find_review
    #code
  end
end
