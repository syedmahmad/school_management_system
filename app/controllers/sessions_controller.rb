class SessionsController < Devise::SessionsController
  def new
    @user = User.new
  end


  def create
    fdafa
  end
end
