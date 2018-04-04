class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @bathroom = Bathroom.find(params[:bathroom_id])
  end

  def create
    @review = Review.new(review_params)
    @bathroom = Bathroom.find(params[:bathroom_id])
    @review.bathroom = @bathroom
    if @review.save
      redirect_to bathroom_path(@bathroom)
    else
      render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:content, :cleanliness,  :rating)
  end
  

end
