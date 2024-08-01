class Attandance

    def initialize
        @students =[]
    end

    def add_students(name)
        @students << name
        puts "Student added : #{name}"

    end
    def mark_attendance
        puts "mark"
    end
    def list_attendance
        puts "list"
    end
    
end