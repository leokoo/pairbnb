class UsersController < Clearance::UsersController
  before_action :require_login, only: :index

  def index
    current_user.articles
  end

  def dashboard
  end
end