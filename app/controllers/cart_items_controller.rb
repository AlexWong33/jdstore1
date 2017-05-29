class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @cart = current_cart#确认是当前购物车
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])#确认车里物品，找到产品ID 和？？
    @product = @cart_item.product #购物车里面的产品项目
    @cart_item.destroy #删除项目
    flash[:warning] = "成功将#{@product.title}从购物车删除！"
    redirect_to :back
  end
end
