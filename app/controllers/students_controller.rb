class StudentsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_student, only: [:edit, :show, :update, :destroy]
  

  def index
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def update
  end

  def create
    student_created = Student.create(student_params)
    if student_created.id.present?
      flash[:notice] = "Thank you. Student has been created."
      fasfasfasd
      redirect_to cases_path
    else
      flash[:notice] = "Something went wrong. Please try again."
      redirect_to :back
    end
  end

  def destroy
  end

  private

    def student_params
      params.require(:student).permit(:name, :gradient, :sex, :city, :address, :age, :mobile)
    end

    def set_student
      if @student = Student.find_by_id(params[:id])
      else
        render :file => 'public/404.html', :status => :not_found, :layout => false
      end
    end

end
