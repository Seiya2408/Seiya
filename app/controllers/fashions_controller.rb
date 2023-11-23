class FashionsController < ApplicationController
  def index
    
    if params[:search] == nil
    @fashions= Fashion.all
    elsif params[:search] == ''
    @fashions= Fashion.all
    else
    @fashions = Fashion.where("address LIKE ? ",'%' + params[:search] + '%')
    end
    @fashions = @fashions.page(params[:page]).per(3)
  end
  def new
    @fashion = Fashion.new
  end
  def create
    fashion = Fashion.new(fashion_params)
    if fashion.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end
  def show
    @fashion = Fashion.find(params[:id])
  end
  def edit
    @fashion = Fashion.find(params[:id])
  end
  def update
    fashion = Fashion.find(params[:id])
    if fashion.update(fashion_params)
      redirect_to :action => "show", :id => fashion.id
    else
      redirect_to :action => "new"
    end
  end
  def destroy
    fashion = Fashion.find(params[:id])
    fashion.destroy
    redirect_to action: :index
  end
  private
  def fashion_params
    params.require(:fashion).permit(:name, :address, :about, :image, :overall, :lat, :lng)
  end
  
end
