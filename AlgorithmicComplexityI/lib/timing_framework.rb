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
      # change below what algo you want to test
      array.sort
      finish = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      time_in_millis = (finish - start) * 1000
      @algo_timer_results << { 'size': array.length, 'time': time_in_millis}
    end
  end

  def runTest(start_size, end_size, increment)
    @algo_timer_results = []
    create_sample_array(start_size, end_size, increment)
    run_algo_timer(@sample_array)
  end

  def run_test_and_save_to_text(repitions, start_size, end_size, increment)
    repitions.times do 
      runTest(start_size, end_size, increment)
    end
    File.write('./lib/data.txt', "Size\n", mode: 'w')
    @algo_timer_results.each do |result|
      File.open('./lib/data.txt', 'a') {
      |f| f.write "#{result[:size]}\n"
      }
    end
    File.write('./lib/data.txt', "Time\n", mode: 'a')
    @algo_timer_results.each do |result|
      File.open('./lib/data.txt', 'a') {
      |f| f.write "#{result[:time]}\n"
      }
    end
    puts "done"
  end

end
