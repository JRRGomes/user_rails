class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user_show = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: '...', age: '...', bio: '...')

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
