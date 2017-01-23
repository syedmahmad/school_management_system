class RegistrationsController < Devise::RegistrationsController

  def create
    user = User.find_by_id(params[:user][:id]) || User.new
    user.assign_attributes(user_contact_params)

    if user.save
      sign_in(user)
      flash[:notice] = 'Successfully Registered!'
      path = root_path
    else
      flash[:notice] = user.errors.full_messages.to_sentence
      path = :back
    end

    redirect_to path
  end


  def new
    @user = User.new
  end

  private

    def user_contact_params
      params.require(:user).permit(:name, :email, :mobile_number, :password)
    end

end
