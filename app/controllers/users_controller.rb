class UsersController < ApplicationController

  def index
    @users=User.all
  end
  def new
    @user=User.new

  end

  def show
    @user=User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_url }
      format.json { head :no_content }
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
