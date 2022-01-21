class ProductsController < ApplicationController

  def index 
    products = Product.discounted(params[:discount])
    if params[:search]
      products = products.where("name iLIKE ?", "%#{params[:search]}%")
    end
    if params[:discount]
      products = products.where("price < ?", 20)
    end
    if params[:sort]  == "price"
      if params[:sort_order] == "desc"
        products = products.order(price: :desc)
      else
        products = products.order(:price)
      end
    else
      products = products.order(:id)
    end
    render json: products
  end
  
  def show
    product = Product.find(params[:id])
    render json: product.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      quantity: params[:quantity]
    )
    if product.save
      render json: product.as_json
    else render json: {errors: product.errors.full_messages}
    end

  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.image_url = params[:image_url] || product.image_url
    product.quantity = params[:quantity] || product.quantity
    if product.save
      render json: product.as_json
    else render json: {errors: product.errors.full_messages}
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product successfully deleted from database"}
  end
end
