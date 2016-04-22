class FoodsController < ApplicationController


    def index
      @foods = Food.all
    end


    def create
      newbie = Food.create food_params
      redirect_to food_path newbie.id
    end


  def new
    @food = Food.new
  end

  def edit
    @food = Food.find params[:id]
  end

    def show
      @food = Food.find params[:id]
    end

  def update
    food = Food.find params[:id]
    food.update food_params
    redirect_to food_path food.id
  end

  def destroy
    Food.destroy params[:id]
    redirect_to food_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :price, :description)
  end





end
