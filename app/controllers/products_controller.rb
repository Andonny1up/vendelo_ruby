class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        id = params[:id]
        
        @product = Product.find(id)
    end

    def new
        @product = Product.new
    end
end