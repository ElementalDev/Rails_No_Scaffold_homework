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

    respond_to do |format|
      if @author.save
        format.html { redirect_to @author, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @author }
      else
        format.html { render :new }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    respond_to do |format|
      if @author.update(post_params)
        format.html { redirect_to @author, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @author }
      else
        format.html { render :new }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
      respond_to do |format|
        format.html { redirect_to home_path, notice: 'Post was successfully destroyed.' }
        format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:author).permit(:name, :age)
    end
end
