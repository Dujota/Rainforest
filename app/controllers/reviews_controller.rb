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
  end

  def update
  end

  def destroy
  end
end
