class PartiesController < ApplicationController


    def index
      @parties = Party.all
    end


    def create
      newbie = Party.create party_params
      redirect_to party_path newbie.id
    end


  def new
    @party = Party.new
  end

  def edit
    @party = Party.find params[:id]
  end

    def show
      @party = Party.find params[:id]
    end

  def update
    party = Party.find params[:id]
    party.update party_params
    redirect_to party_path party.id
  end

  def destroy
    Party.destroy params[:id]
    redirect_to parties_path
  end

  private

  def party_params
    params.require(:party).permit(#cust_id and table_id?)
  end


  end


end
