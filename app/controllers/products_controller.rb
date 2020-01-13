class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    params[:product][:category_ids].each do |category_id|
     category = Category.find(category_id)
     @product.categories << category
   end

   if @product.save
     redirect_to products_path
   else
     render :new
   end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end

  def categories_params
    params.require(:category).permit(:name)
  end
end
