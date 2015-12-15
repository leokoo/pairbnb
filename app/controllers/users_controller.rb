class UsersController < Clearance::UsersController
  before_action :require_login, only: :index

  def index
  end

  def dashboard
  end
end