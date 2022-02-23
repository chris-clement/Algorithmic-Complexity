class TimingFramework

  attr_reader :sample_array

  def initialize
    @sample_array = []
  end

  def random_array(x, max)
    x.times.map{ rand(max) }
  end

# time_taken = []

  def create_sample_array(start_size, end_size, increment)
    i = start_size
    while i < end_size
      @sample_array << random_array(i, 10)
      i += increment
    end
    return @sample_array
  end


# array_of_array_of_random_numbers.each do |array|
#   start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
#   array.last
#   finish = Process.clock_gettime(Process::CLOCK_MONOTONIC)
#   time_in_millis = (finish - start) * 1000
#   time_taken << {'size': array.length, 'time': time_in_millis}
# end


# print time_taken

end
