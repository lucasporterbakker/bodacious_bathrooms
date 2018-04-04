class BathroomsController < ApplicationController

  def index
    @bathrooms = Bathroom.all
  end

  def show
    @bathroom = Bathroom.find(params[:id])
  end

  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = Bathroom.new(bathroom_params)
    if @bathroom.save
      redirect_to bathrooms_path
    else
      render :new
    end
  end

private

def bathroom_params
  params.require(:bathroom).permit(:location, :bidet, :gender, :size, :heated, :squatter, :tp)
end


end
