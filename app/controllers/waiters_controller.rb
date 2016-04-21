class WaitersController < ApplicationController

  def index
    @waiters = Waiter.all
  end


  def create
    newbie = Waiter.create waiter_params
    redirect_to waiter_path newbie.id
  end


def new
  @waiter = Waiter.new
end

def edit
  @waiter = Waiter.find params[:id]
end

  def show
    @waiter = Waiter.find params[:id]
  end

def update
  waiter = Waiter.find params[:id]
  waiter.update waiter_params
  redirect_to waiter_path waiter.id
end

def destroy
  Waiter.destroy params[:id]
  redirect_to waiters_path
end

private

def waiter_params
  params.require(:waiter).permit(:name)
end


end


end



end
