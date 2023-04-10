class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice]="Book was successfully created."
      redirect_to "/books/#{@book.id}"
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @book=Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book =Book.find(params[:id])
  end
  def update
    @book=Book.find(params[:id])

    if @book.update(book_params)
      flash[:notice]="Book was successfully updated."
      redirect_to "/books/#{@book.id}"
    else
      render :show
    end
  end

  def destroy
    book=Book.find(params[:id])
    book.destroy # delete record
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
