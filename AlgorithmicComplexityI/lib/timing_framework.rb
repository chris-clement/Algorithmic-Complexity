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
      start = Process.clock_gettime(Process::CLOCK_MONOTONIC, :nanosecond)
      # change below what algo you want to test
      array.shuffle
      finish = Process.clock_gettime(Process::CLOCK_MONOTONIC, :nanosecond)
      time_in_micros = (finish - start) / 1000
      @algo_timer_results << { 'size': array.length, 'time': time_in_micros}
    end
  end

  def run_test(start_size, end_size, increment)
    @algo_timer_results = []
    create_sample_array(start_size, end_size, increment)
    run_algo_timer(@sample_array)
  end

  def run_test_and_save_to_text(repitions, start_size, end_size, increment)
    repitions.times do 
      run_test(start_size, end_size, increment)
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

  def my_reverse(list)
    []
  end

end

example = TimingFramework.new
example.run_test_and_save_to_text(10, 5000, 100000, 5000)

