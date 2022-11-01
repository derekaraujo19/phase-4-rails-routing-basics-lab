class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    descGrades = Student.order(grade: :desc)
    render json: descGrades
  end

  def highest_grade
    student = Student.order(grade: :desc).first
    render json: student
  end

end
