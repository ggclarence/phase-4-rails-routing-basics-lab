class StudentsController < ApplicationController
    def index
       render json: Student.all
    end

    def grades
        render json: Student.all.order(grade: :desc)
    end

    def highest_grade
        render json: Student.all.max_by{|obj| obj.grade}
    end
end
