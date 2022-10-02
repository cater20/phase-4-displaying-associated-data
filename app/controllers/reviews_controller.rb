class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc)
    render json: reviews,include: :dog_house
   # render json: dog_house, include: :reviews
  end

end
