class UsersController < ApplicationController
  def index
    @new = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      render :index
    end
  end

  def show
    @new = Book.new
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
