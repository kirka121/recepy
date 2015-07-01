class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new

    @category.assign_attributes permitted_category_patams

    if @category.save
      flash[:success] = 'Success!'
    else
      flash[:error] = 'Error!'
    end

    @categories = Category.all
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]

    @category.assign_attributes permitted_category_patams

    if @category.save
      flash[:success] = 'Success!'
    else
      flash[:error] = 'Error!'
    end
  end

  def destory
    @category = Category.find params[:id]

    if @category.destroy
      flash[:success] = 'Success!'
    else
      flash[:error] = 'Error!'
    end

    @categories = Category.all
  end

  private

  def permitted_category_patams
    params.require(:category).permit(:title, :description)
  end
end