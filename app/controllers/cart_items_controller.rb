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

  def update
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])
    @cart_item.update(cart_item_params)

    redirect_to carts_path
  end
  private
  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end
end
