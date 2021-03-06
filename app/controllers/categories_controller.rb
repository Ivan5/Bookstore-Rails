class CategoriesController < ApplicationController
  def new
    @page_title = 'Add new Cateory'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category created"
      redirect_to categories_path
    else

      render 'new'
    end

  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @books = @category.books
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
