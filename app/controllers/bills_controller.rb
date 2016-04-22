class BillsController < ApplicationController


    def index
      @bills = Bill.all
    end


    def create
      newbie = Bill.create bill_params
      redirect_to bill_path newbie.id
    end


  def new
    @bill = Bill.new
  end

  def edit
    @bill = Bill.find params[:id]
  end

    def show
      @bill = Bill.find params[:id]
    end

  def update
    bill = Bill.find params[:id]
    bill.update bill_params
    redirect_to bill_path bill.id
  end

  def destroy
    Bill.destroy params[:id]
    redirect_to bill_path
  end

  private

  def bill_params
    params.require(:bill).permit(:total)
  end


  


end
