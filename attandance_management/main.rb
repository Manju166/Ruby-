require_relative 'attandance'
# require_relative 'student'

attandance = Attandance.new('attandance.txt')
def start
    loop do
        puts "1. Add students"
        puts "2. Mark attendance"
        puts "3. List attendance"
        puts "4. Exit"
        print "Choose an option: "

        choice = gets.chomp.to_i

        case choice
        when 1
            print "Enter a student name: "
            name = gets.chomp
            add_students(name)
        when 2
            print "Enter student name: "
        when 3
        when 4
            print "Existing the attandance management system!"
            break
        else
            puts "Invalid choice. Please try again!"
        end
    end
end

