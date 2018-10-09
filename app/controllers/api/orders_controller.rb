class Api::OrdersController < ApplicationController

  before_action :authenticate_user
  
  def create
  order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id)

    subtotal = order.product.price * order.quantity
    tax = order.product.price * order.quantity * 0.09
    total = subtotal + tax 

    order.subtotal = subtotal
    order.tax = tax
    order.total = total
 
    if order.save
      render json: {message: 'Order created successfully'}, status: :created     

    else
      render json: {errors: order.errors.full_messages}, status: :bad_request
    end     

  end


end
