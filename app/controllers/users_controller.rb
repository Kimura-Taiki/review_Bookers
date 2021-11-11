class UsersController < ApplicationController
  def index
    @new = Book.new
    @users = User.all
  end

  def show
    @new = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    if current_user.id != params[:id].to_i
      redirect_to user_path(current_user)
    end
  end

  def update
    if current_user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
