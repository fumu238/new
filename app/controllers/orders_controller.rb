class OrdersController < ApplicationController

   def new
       @order = Order.new
      @user = User.find(params[:user_id])
      payment = Payment.all
   end

   def create
   end

   def edit
   end

   def update
   end

   def destroy
   end

   def index
   end

   def show

   end

   def complete
   end

end
