class BooksController < ApplicationController

  def index
    @books = Book.page(params[:page]).per(12).order("created_at DESC")
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

end