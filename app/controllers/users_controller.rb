class UsersController < ApplicationController

  def index
       @users = User.paginate(page: params[:page])
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
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_url }
      format.json { head :no_content }
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

   def signed_in_user
    redirect_to signin_url, notice: "Please sign in." unless signed_in?
   end

  def correct_user
     @user = User.find(params[:id])
     redirect_to(root_path) unless current_user?(@user)
   end

end
