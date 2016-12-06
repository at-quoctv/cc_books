class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.build review_params
    @review.book_id = @book.id
    if @review.save
      
      redirect_to book_path @book
      flash[:success] = t "review.controller.flash_success"
    else
      render :new
    end
  end

   private
  def review_params
    params.require(:review_rate).
      permit :content, :number_rate_of_user, :book_id
  end
end
