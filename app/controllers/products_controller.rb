class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all

    @products = Product.where("name LIKE ?", "%#{ params[:query] }%") if params[:query].present? && params[:query] != ""

    if params[:price_min].present? && params[:price_min] != "" && params[:price_max].present? && params[:price_max] != ""
      @products = @products.where(price: params[:price_min]..params[:price_max])
    end

    if params[:quantity_min].present? && params[:quantity_min] != "" && params[:quantity_max].present? && params[:quantity_max] != ""
      @products = @products.where(quantity: params[:quantity_min]..params[:quantity_max])
    end

    if params[:available].present? && params[:available] != ""
      @products = @products.where(available: params[:available])
    end

    if params[:released_at_start].present? && params[:released_at_start] != "" && params[:released_at_end].present? && params[:released_at_end] != ""
      @products = @products.where(released_at: params[:released_at_start]..params[:released_at_end])
    end

  end

  def show; end

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
end
