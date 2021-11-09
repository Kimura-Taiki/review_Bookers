class UsersController < ApplicationController
  def index
    @new = Book.new
  end

  def show
    @new = Book.new
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

end
