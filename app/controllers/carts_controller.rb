class CartsController < ApplicationController
  def clean
    current_cart.clean!
    flash[:warning] = "购物车已经清空"
    redirect_to carts_path
  end
end
