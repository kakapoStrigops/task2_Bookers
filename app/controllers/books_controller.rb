class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id), method: :get
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.permit(:title, :body)
  end

end
