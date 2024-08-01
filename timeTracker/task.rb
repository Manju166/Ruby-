class Task
    attr_reader :name, :start_time, :end_time
  
    def initialize(name, start_time, end_time)
      @name = name
      @start_time = start_time
      @end_time = end_time
    end
  
    def duration
      (@end_time - @start_time).to_i 
    end
  
    def to_s
      "#{@name}: #{duration} seconds (from #{@start_time} to #{@end_time})"
    end
  end
  