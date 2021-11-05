class BooksController < ApplicationController
  def home
  end

  def index
    @new = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end
end
