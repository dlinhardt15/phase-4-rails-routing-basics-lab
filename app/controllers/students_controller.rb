class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        render json: students.order(:grade).reverse
    end

    def highest_grade
        students = Student.all
        render json: students.order(:grade).last
    end

end
