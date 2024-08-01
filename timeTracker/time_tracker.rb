require 'date'
require 'time'  
require_relative 'task'

class TimeTracker
  def initialize
    @tasks = []
  end

  def add_task(name, start_time, end_time)
    task = Task.new(name, start_time, end_time)
    @tasks << task
  end

  def list_tasks
    @tasks.each do |task|
      puts task
    end
  end
~
  def total_time
    total = @tasks.sum(&:duration)
    puts "Total time tracked: #{total} seconds"
  end
end

def prompt_for_time(prompt)
  print prompt
  Time.parse(gets.chomp)  
rescue ArgumentError
  puts "Invalid time format. Please enter in YYYY-MM-DD HH:MM:SS."
  retry
end

def main
  tracker = TimeTracker.new

  loop do
    puts "\nTime Tracker"
    puts "1. Add Task"
    puts "2. List Tasks"
    puts "3. Show Total Time"
    puts "4. Exit"
    print "Choose an option: "

    choice = gets.chomp.to_i

    case choice
    when 1
      print "Enter task name: "
      name = gets.chomp
      start_time = prompt_for_time("Enter start time (YYYY-MM-DD HH:MM:SS): ")
      end_time = prompt_for_time("Enter end time (YYYY-MM-DD HH:MM:SS): ")
      tracker.add_task(name, start_time, end_time)
    when 2
      puts "Tasks:"
      tracker.list_tasks
    when 3
      tracker.total_time
    when 4
      puts "Exiting..."
      break
    else
      puts "Invalid choice. Please try again."
    end
  end
end

main
