class RegistrationsController < Devise::RegistrationsController

  def create
    fasdfasd
    path = :back
    user = User.find_by_mobile_number(params[:user][:mobile_number])
    if user
      if user.valid_password?(params[:user][:password])
        sign_in(user)
        path = root_path
      else
        flash[:error] = "Please enter valid password."
      end
    else
      flash[:error] = "The phone number you entered is not associated with any account."
    end
    redirect_to path
  end


  def new
    @user = User.new
  end

  private

    def set_user
      if @user = User.find_by_id(params[:id]) || User.find(params[:user][:id])
      else
        render :file => 'public/404.html', :status => :not_found, :layout => false
      end
    end
end
