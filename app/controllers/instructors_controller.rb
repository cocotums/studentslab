class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
   @instructor = Instructor.destroy(params[:id])
    redirect_to instructors_path
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      redirect_to instructors_path
    else
       render :new
    end
  end

  private
  def instructor_params
    params.require(:instructor).permit(:firstname, :lastname, :age, :email, :phonenumber)
  end
end
