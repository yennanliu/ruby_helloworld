class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update ]

  def index
    @products = Product.all
  end

  # def show
  #   @product = Product.find(params[:id])
  # end
  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   @product = Product.find(params[:id])
  # end

  def edit
  end

  # def update
  #   @product = Product.find(params[:id])
  #   if @product.update(product_params)
  #     redirect_to @product
  #   elses
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end


    def product_params
      params.expect(product: [ :name ])
    end

end
