class Api::ProductsController < ApplicationController
  before_action :set_product, only: [:update, :destroy]

  def index
    render json: Product.all
  end

  def create

  end

  def update

  end

  def destroy

  end

  private

    def product_params

    end

    def set_product

    end

end
