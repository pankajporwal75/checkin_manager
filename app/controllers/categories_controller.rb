class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show edit update destroy ]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    result = CreateRecord.call(@category)
    if result[:success]
      redirect_to categories_path, notice: 'Category Successfully Created'
    else
      @category = result[:object]
    end
  end

  def update
    result = UpdateRecord.call(@category, category_params)
    if result[:success]
      redirect_to categories_path, notice: 'Category Successfully Updated'
    else
      binding.pry 
      @category = result[:object]
    end
  end

  def destroy
    @category.destroy!
    redirect_to categories_url, alert: "Category was successfully destroyed."
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
