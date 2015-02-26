class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit

    @cat = Cat.find(params[:id])
    @toys = Toy.all

  end

  def link_to_cat
    @toy = Toy.find(params[:toy_id])
    if params[:toy_remove] == "true"
      @toy.cat_id = nil
    else
      @toy.cat_id = (params[:cat_id])
    end
    if @toy.save
      redirect_to cat_path(params[:cat_id])
    end

  end

  def update

    @cat.upadate(cat_params)
    redirect_to cat_path(@cat[:id])

  end


  def destroy

  end

  private

  def cat_params

  params.require(:cat).permit(:name, :created_at, :updated_at)

  end

end
