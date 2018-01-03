class BooksController < ApplicationController
  def index
    # your code here
    @books=Book.all
  end

  def new
    # your code here
  end

  def create
    # your code here
    book=Book.new(book_params)
    if book.save
      redirect_to books_url
    else
      render json: 'Error'
    end
  end

  def destroy
    # your code here
    # find Book from Database and Deleted
    book=Book.find(params[:id])
    book.destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
