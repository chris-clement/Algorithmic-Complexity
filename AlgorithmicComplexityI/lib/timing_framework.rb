class TimingFramework

  def random_array(x, max)
    x.times.map{ rand(max) }
  end

# array_of_array_of_random_numbers = []
# time_taken = []


# i = 1
# while i < 5
#   array_of_array_of_random_numbers << random_array(i, 10)
#   i += 1
# end

# print array_of_array_of_random_numbers

# array_of_array_of_random_numbers.each do |array|
#   start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
#   array.last
#   finish = Process.clock_gettime(Process::CLOCK_MONOTONIC)
#   time_in_millis = (finish - start) * 1000
#   time_taken << {'size': array.length, 'time': time_in_millis}
# end


# print time_taken

end
