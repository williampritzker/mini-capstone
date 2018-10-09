class Api::CartedProductsController < ApplicationController

  def create
    carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity], user_id: current_user.id, status: "carted"
    )

    if carted_product.save
      render json: {message: 'Carted Product created successfully'}, status: :created
    else
      render json: {errors: carted_product.errors.full_messages}, status: :bad_request
    end
  end


  def index
    @carted_products = CartedProduct.all

    if params[:status]
      cartedproduct = CartedProduct.find_by(status: "carted")
      @carted_product = 
    end



  # def index
  #       @carted_products = CartedProduct.all

  #   if params[:]
  #     @products = Product.where("name LIKE ?", "%#{params[:name]}%")
  #   end

  #   if params[:category]
  #     category = Category.find_by(name: params[:category])
  #     @products = category.products
  #   end

  #   render 'index.json.jbuilder'
    
  # end

end



