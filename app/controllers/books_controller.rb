class BooksController < ApplicationController
def index
	@book = Book.all
end
def new
@book = Book.new
end

def show
  @book = Book.find_by(params[:id])
end
def create
  @book = Book.new(book_params)
  if @book.save
    redirect_to books_url, notice: "Book has been added"
    
  end
end
def edit 
  @book = Book.find_by(params[:id])
end

def update
    @book = Book.find_by(params[:id])
    if @book.update_attributes(user_params)
      # Handle a successful update.
       
       redirect_to books_url 
    else
      render 'edit'
    end
  end

private
def book_params
  params.require(:book).permit(:title, :ISBN, :user_id, :quantity)
end
end
