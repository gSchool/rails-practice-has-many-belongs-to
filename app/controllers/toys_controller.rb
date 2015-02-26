class ToysController < ApplicationController

  def index
    @toys = Toy.all
  end

  def show
    @toy = Toy.find(params[:id])
  end



  def toy_params

  params.require(:toy).permit(:name, :created_at, :updated_at)

  end


end
