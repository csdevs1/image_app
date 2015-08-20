class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    
    def new
        @product = Product.new
        3.times { @product.images.build }
    end
    
    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to :root
        else
            render :action => 'new'
        end
    end
    
    private
        def product_params
            params.require(:product).permit(:title, :info, :description, :price, :images_attributes => [:image])
        end
end
