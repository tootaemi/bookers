class HomesController < ApplicationController

  def top
  end
  
  def new
    @lists = List.all
  end



  def index
   @lists = List.all
  end


  def show
   @list = List.find(params[:id])  
  end


  def edit
  end
  
end
