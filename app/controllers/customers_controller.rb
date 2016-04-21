class CustomersController < ApplicationController

    def index
      @acustomer = Customer.all
    end


    def create
      newbie = Customer.create customer_params
      redirect_to customers_path newbie.id
    end


  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find params[:id]
  end

    def show
      @customer = Customer.find params[:id]
    end

  def update
    customer = Customer.find params[:id]
    customer.update customer_params
    redirect_to customers_path customer.id
  end

  def destroy
    Customer.destroy params[:id]
    redirect_to customers_path
  end

  private

  def customer_params
    #define 
  end


  end



end
