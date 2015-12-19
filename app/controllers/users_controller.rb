class UsersController < Clearance::UsersController
  before_action :require_login, only: :index
  before_action :set_users, only: [:show, :edit, :update, :destroy]

  def index
  	@users = User.all
  end

  def dashboard
  end

  def show
  end

 	def edit
 	end

 	def update
 		if @user.update(user_params)
 			redirect_to @user
 		else
 			render :edit
 		end
 	end

 	def destroy
 		@user.destroy

 		redirect_to users_path
 	end

	private
	def user_params
		params.require(:user).permit(:first_name, :email, :image)
	end

	def set_users
		@user = User.find(params[:id])
	end
end

