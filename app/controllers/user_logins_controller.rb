class UserLoginsController < ApplicationController
  before_action :set_user_login, only: %i[ show update destroy ]

  # GET /user_logins
  def index
    @user_logins = UserLogin.all

    render json: @user_logins
  end

  # GET /user_logins/1
  def show
    render json: @user_login
  end

  # POST /user_logins
  def create
    @user_login = UserLogin.new(user_login_params)

    if @user_login.save
      render json: @user_login, status: :created, location: @user_login
    else
      render json: @user_login.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_logins/1
  def update
    if @user_login.update(user_login_params)
      render json: @user_login
    else
      render json: @user_login.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_logins/1
  def destroy
    @user_login.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_login
      @user_login = UserLogin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_login_params
      params.require(:user_login).permit(:name, :password, :email)
    end
end
