class TeachersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_teacher, only: [:edit, :show, :update, :destroy, :mark_attendance]
  before_action :set_teacher_classes, only: [:edit, :new]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def update
  end

  def mark_attendance
    @students = @teacher.students
  end

  def save_mark_attendance
    fdasfasdfafasdas
  end

  def create
    teacher_created = Teacher.create(teacher_params)
    if teacher_created.id.present?
      flash[:notice] = "Thank you. Teacher has been created."
      redirect_to mark_attendance_teacher_path(teacher_created)
    else
      flash[:notice] = "#{teacher_created.errors.full_messages.to_sentence}."
      redirect_to :back
    end
  end

  def destroy
  end

  private


    def set_teacher
      if @teacher = Teacher.find_by_id(params[:id])
      else
        render :file => 'public/404.html', :status => :not_found, :layout => false
      end
    end

    def teacher_params
      params.require(:teacher).permit(:name, :mobile, :salary, :joining_date, :address, :student_class_id)
    end

    def set_teacher_classes
      @classes = StudentClass.all
    end

end
