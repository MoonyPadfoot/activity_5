class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    flash[:notice] = 'Product deleted successfully!'
    redirect_to products_path
  end

  def update

  end

  def destroy
    @review.destroy

  end

  private
  def set_review
    @review = Product.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
