class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    products = Product.all
    
    if params[:category]
      category = Category.find_by(name: params[:category])
      products = category.products
    end
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      quantity: params[:quantity],
      supplier_id: params[:supplier_id]
    )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.quantity = params[:quantity] || product.quantity
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product destroyed successfully!" }
  end
end
