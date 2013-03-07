class UserLoginsController < ApplicationController
  # GET /user_logins
  # GET /user_logins.json
  def index
    @user_logins = UserLogin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_logins }
    end
  end

  # GET /user_logins/1
  # GET /user_logins/1.json
  def show
    @user_login = UserLogin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_login }
    end
  end

  # GET /user_logins/new
  # GET /user_logins/new.json
  def new
    @user_login = UserLogin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_login }
    end
  end

  # GET /user_logins/1/edit
  def edit
    @user_login = UserLogin.find(params[:id])
  end

  # POST /user_logins
  # POST /user_logins.json
  def create
    @user_login = UserLogin.new(params[:user_login])

    respond_to do |format|
      if @user_login.save
        format.html { redirect_to @user_login, notice: 'User login was successfully created.' }
        format.json { render json: @user_login, status: :created, location: @user_login }
      else
        format.html { render action: "new" }
        format.json { render json: @user_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_logins/1
  # PUT /user_logins/1.json
  def update
    @user_login = UserLogin.find(params[:id])

    respond_to do |format|
      if @user_login.update_attributes(params[:user_login])
        format.html { redirect_to @user_login, notice: 'User login was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_logins/1
  # DELETE /user_logins/1.json
  def destroy
    @user_login = UserLogin.find(params[:id])
    @user_login.destroy

    respond_to do |format|
      format.html { redirect_to user_logins_url }
      format.json { head :no_content }
    end
  end
end
