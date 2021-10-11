class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        highest = Student.all.max_by { |student| student.grade }
        render json: highest 
    end

end
