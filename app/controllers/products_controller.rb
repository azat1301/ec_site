class ProductController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :admin_only, except: [:index, :show]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: '製品が作成されました。'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: '製品が更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: '製品が削除されました。'
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def admin_only
    unless current_user && current_user.admin?
      flash[:alert] = '管理者権限が必要です。'
      redirect_to root_path
    end
  end

  def product_params
    params.require(:product).permit(:name, :description, :photos, :price)
  end
end
