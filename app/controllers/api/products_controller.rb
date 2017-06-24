class Api::ProductsController < ApplicationController
  before_action :set_product, only: [:update, :destroy]

  def index
    render json: Product.all
  end

  def create
    product = Product.new
    if product.save
      render json: product
    else
      render_error(product)
    end
  end

  def update
    if @product.update(product_params[:id])
      render json: @product
    else
      render_error(@product)
    end
  end

  def destroy
    @product.destroy
    render json: { message: 'Product deleted'}
  end

  private

    def product_params
      params.require(:product).permit(:name, :description, :price)
    end

    def set_product
      @product = Product.find(params[:id])
    end

end
