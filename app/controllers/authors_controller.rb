class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @authors = Author.find(params[:id])
    @books = @authors.books
  end

  def new
    @authors = Author.new
  end

  def create
    @author = Author.new(post_params)
    @author.save
    @authors = Author.all
    redirect_to home_path
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(post_params)
    @authors = Author.all
    redirect_to home_path
  end

  def destroy
    @author = Author.find(params[:id])
    @books = @author.books
    if (@books)
      @books.destroy
      @author.destroy
    end
    @authors = Author.all
    redirect_to home_path
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:author).permit(:name, :age)
    end
end
