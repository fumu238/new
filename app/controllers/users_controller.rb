class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
  	@user = User.find(params[:id])
  end

  def completion
    unless cart = Cart.find_by(user_id: current_user.id)
      Cart.create(user_id: current_user.id)
    end
  end

  def index
    @users = User.all
  end
  def soft_delete
    @user = User.find(params[:id])
    @user.update( delete_flag: "true")
  end
  private
    def user_params
        params.require(:user).permit(:user_name, :user_phonetic, :postal, :address, :tell, :emal)
    end

end
