require 'pry'
# code here!
class School
    attr_accessor :name, :roster

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] = [] if @roster[grade].nil?
        
        
        @roster.map do |key, value|
            if key == grade
                value << student_name
            end
        end
    end
    def grade(number)
        
        @roster.each do | key, value |
            if key == number
                return value
            end
        end
    end
    def sort
        
        @roster.each { | key, value | value.sort! }
        @roster.sort.to_h
    end

end

# var1 = School.new("EAMS")

# var1.add_student("Larry", 16)
