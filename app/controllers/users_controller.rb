class UsersController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    @users = User.all
  end

  def show
  end

  def edit
  end
end
