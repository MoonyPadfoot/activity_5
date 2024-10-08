class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_search_filter, only: [:index, :my_shop]

  def index

  end

  def show; end

  def my_shop

  end

  def new
    @product = Product.new
  end

  def create
    # render :json => product_params
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = 'Product created successfully!'
      redirect_to products_path
    else
      flash.now[:alert] = 'Product creation failed'
      render :new, status: :unprocessable_entity
    end
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

  def set_search_filter
    @products = Product.all
                       .search_by_name(params[:name])
                       .filter_by_available(params[:available] || true)
                       .filter_by_quantity(params[:quantity_min], params[:quantity_max])
                       .filter_by_price(params[:price_min], params[:price_max])
                       .filter_by_released_at(params[:released_at_start], params[:released_at_end])
                       .page(params[:page]).per(5)
  end
end
