class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    render :json => product_params[:image].avatar_identifier
    # @product = Product.new(product_params)
    #
    # if @product.save
    #   flash[:notice] = 'Product created successfully!'
    #   redirect_to products_path
    # else
    #   flash.now[:alert] = 'Product creation failed'
    #   render :new, status: :unprocessable_entity
    # end
  end

  def edit; end

  def update
    if @product.update(product_params)
      flash[:notice] = 'Product updated successfully!'
      redirect_to products_path
    else
      flash.now[:alert] = 'Product update failed'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    flash[:notice] = 'Product deleted successfully!'
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :content, :image, :quantity, :price, :available, :released_at, :discount)
  end
end
