class BooksController < ApplicationController
  def index
  end

  def create
  end

  def show
    @new = Book.new
    @book = Book.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
