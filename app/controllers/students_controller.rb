class StudentsController < ApplicationController
before_action :set_student, only: [:show, :edit]
  def index
    @students = Student.all
  end

  def new
  @student = Student.new
  @instructors = Instructor.all
  end

  def show
    @student = Student.find(params[:id])
  end


  def create
    @instructor = Instructor.find(params[:student][:instructor])
    @student = @instructor.students.build(student_params)
    if @student.save
      redirect_to students_path
    else
       redirect_to new_instructor_student
    end
  end

  def edit
    @instructors = Instructor.all
  
  end

 

  def update
    @instructor = Instructor.find(params[:student][:instructor])
    @student = Student.find(params[:id])
    if @student.update(student_params)
    redirect_to students_path
    else
      redirect_to edit_instructor_student
    end
  end

  def destroy
    @student = Student.destroy(params[:id])
    redirect_to students_path
  end

  private 

    def set_student
    @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:firstname, :lastname, :age, :email, :phonenumber, :instructor_id)
    end
end
