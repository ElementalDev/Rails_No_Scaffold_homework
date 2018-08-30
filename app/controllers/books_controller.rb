class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @books = Book.new
  end

  def create
    @book = Book.new(post_params)
    @book.save
    @books = Book.all
    redirect_to authors_path(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(post_params)
    @books = Book.all
    redirect_to authors_path(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if (@book)
      @book.destroy
    end
    @books = Book.all
    redirect_to home_path
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:book).permit(:title, :genre, :summary, :author_id)
    end
end
