class OrderItemsController < ApplicationController

def create
	product = Product.find_by(id:  params[:product_id])
		order = Order.find_by(user_id: current_user.id)
		order_item = OrderItem.find_by(product_id: product.id, user_id: user.id)
	    i = params[:cart_item][:cart_quantity]
		order_item.order__quantity
		order_item.save
		redirect_to orders_complete_path
end

   private
    def order_item_params
    	 params.require(:order_item).permit(:product_id, :order_id, :order_item_price, :order_quantity)
	  end

end
