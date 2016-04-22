class OrdersController < ApplicationController


    def index
      @orders = Order.all
    end


    def create
      newbie = Order.create order_params
      redirect_to order_path newbie.id
    end


  def new
    @order = Order.new
  end

  def edit
    @order = Order.find params[:id]
  end

    def show
      @order = Order.find params[:id]
    end

  def update
    order = Order.find params[:id]
    order.update order_params
    redirect_to order_path order.id
  end

  def destroy
    Order.destroy params[:id]
    redirect_to order_path
  end

  private

  def order_params
    params.require(:order).permit(:table_id, :food_id, :bill_id)
  end





end
