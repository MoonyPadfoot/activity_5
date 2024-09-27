class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(product_params)
  end

  def product_params
    params.require(:product).permit(:name, :content, :image, :quantity, :price, :available, :released_at, :discount, :created_at)
  end
end
