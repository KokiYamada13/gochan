class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
        flash[:success] = 'ユーザを登録しました。'
        # redirect_to @user
        redirect_to :root
    else
        flash.now[:danger] = 'ユーザの登録に失敗しました。'
        render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
