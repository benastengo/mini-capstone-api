class ProductsController < ApplicationController

  def black_market_method
    products = Product.all
    render json: products.as_json
  end

  def heart_method
    products = Product.find_by(name: "Heart")
    render json: products.as_json
  end

  def brain_method
    products = Product.find_by(name: "Brain" )
    render json: products.as_json
  end

  def foot_method
    products = Product.find_by(name: "Foot" )
    render json: products.as_json
  end

  def gallbladder_method
    products = Product.find_by(name: "Gallbladder")
    render json: products.as_json
  end

end
