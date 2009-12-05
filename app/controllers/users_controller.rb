class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.find(:all)
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = 'User was successfully created.'
      if params[:user][:avatar].blank?
        redirect_to(@user)
      else
        render :action => 'cropping'
      end
    else
      render :action => 'new'
    end
  end

  # PUT /users/1
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = 'User was successfully updated.'
      if params[:user][:avatar].blank?
        redirect_to(@user)
      else
        render :action => 'cropping'
      end
    else
      render :action => "edit"
    end
  end

  
  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to(users_url)
  end
  
end
