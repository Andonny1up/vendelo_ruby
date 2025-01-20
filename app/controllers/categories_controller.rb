class CategoriesController < ApplicationController
  

  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    category
  end

  # POST /categories 
  def create
    @category = Category.new(category_params)
    
    if @category.save
      redirect_to categories_url, notice: t('.created')
    else
      render :new, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /categories/1 
  def update
      if category.update(category_params)
        redirect_to categories_url, notice: t('.updated')
      else
        render :edit, status: :unprocessable_entity
      end
  end

  # DELETE /categories/1 
  def destroy
    @category.destroy!

    redirect_to categories_path, status: :see_other, notice: t('.destroyed')
  end

  private
    def category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
