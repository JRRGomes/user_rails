class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user_show = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
