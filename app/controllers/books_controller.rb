class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @books = Book.find(params[:id])
    @author = @books.author
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
