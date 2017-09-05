require "pry"
class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    Student.create(student_info)
    redirect_to students_path
  end

  private
  def student_info
    params.require(:student).permit(:first_name, :last_name)
  end

end
