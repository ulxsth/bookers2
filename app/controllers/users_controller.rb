class UsersController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    @users = User.all
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
  end

  def edit
  end
end
