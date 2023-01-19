class ReviewsController < ApplicationController

   
        def create
          @book = Book.find(params[:book_id])
          @review = @book.reviews.create(review_params)
          redirect_to book_path(@book)
        end
      
        private
          def review_params
            params.require(:review).permit(:r_name, :r_desc, :star)
          end
      

end