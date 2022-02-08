class BooksController < ApplicationController
  
  def index
   @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
     if @book.save
     redirect_to books_path(@book.id)
     elsif
      render :book
     end
  end



  def show
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
