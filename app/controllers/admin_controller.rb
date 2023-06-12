class AdminController < ApplicationController
  before_action :authenticate_admin!

  def dashboard
    # 管理者ダッシュボードの表示や、管理者に固有のロジックやデータの取得を追加します
  end

  def manage_products
    @products = Product.all
    # 製品の管理に固有のロジックやデータの取得を追加します
  end

  # 他のリソースの管理や管理者固有のタスクの実行のために、さらにアクションやメソッドを追加します

  private

  def authenticate_admin!
    unless current_user && current_user.admin?
      flash[:alert] = '管理者権限が必要です。'
      redirect_to root_path
    end
  end
end
