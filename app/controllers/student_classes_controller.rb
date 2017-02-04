class StudentClassesController < ApplicationController
   before_action :authenticate_user!
   before_action :set_student_class, only: [:edit, :show, :update, :destroy]

  def index
    @studentClasses = StudentClass.all
  end

  def new
    @studentClass = StudentClass.new
  end

  def edit
  end

  def update
  end

  def create
    studentClass_created = StudentClass.create(studentClass_params)
    if studentClass_created.id.present?
      flash[:notice] = "Thank you. Class has been created."
      render action: "index"
    else
      flash[:notice] = "#{studentClass_created.errors.full_messages.to_sentence}."
      redirect_to :back
    end
  end

  def destroy
  end

  private

    def studentClass_params
      params.require(:student).permit(:name, :fee)
    end

    def set_student_class
      if @studentClass = StudentClass.find_by_id(params[:id])
      else
        render :file => 'public/404.html', :status => :not_found, :layout => false
      end
    end

end
