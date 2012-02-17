class UsersController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:show, :index]
  
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
    @title = "index realtors"
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @listings = @user.listings
    @json = @listings.all.to_gmaps4rails

    render :layout => 'profile'
    @title = "realtor profile"
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
    @title = "register"
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    render :layout => "cpanel"
    @title = "edit profile"
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to edit_user_path(@user), :notice => 'All signed up. Now you just need to fill out your public profile.' }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, :notice => 'Your profile was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def cpanel
    render :layout => "cpanel"
    @title = "Realtor control panel"
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :ok }
    end
  end
end