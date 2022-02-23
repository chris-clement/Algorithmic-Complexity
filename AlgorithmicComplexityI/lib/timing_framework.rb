class TimingFramework

  attr_reader :sample_array, :algo_timer_results

  def initialize
    @sample_array = []
    @algo_timer_results = []
  end

  def random_array(x, max)
    x.times.map{ rand(max) }
  end

  def create_sample_array(start_size, end_size, increment)
    i = start_size
    while i <= end_size
      @sample_array << random_array(i, 10)
      i += increment
    end
    return @sample_array
  end

  def run_algo_timer(array_of_arrays)
    array_of_arrays.each do |array|
      start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      array.last
      finish = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      time_in_millis = (finish - start) * 1000
      @algo_timer_results << { 'size': array.length, 'time': time_in_millis}
    end
  end

  def runTest
    create_sample_array(10, 20, 2)
    run_algo_timer(@sample_array)
    print @algo_timer_results
  end

end
