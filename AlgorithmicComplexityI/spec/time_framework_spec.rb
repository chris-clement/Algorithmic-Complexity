require 'timing_framework'

describe 'TimingFramework' do

  before(:each) do
    @timingFramework = TimingFramework.new;
  end
  it('initializes with certain variables') do
    expect(@timingFramework.sample_array).to eq []
    expect(@timingFramework.algo_timer_results).to eq []
  end
  describe '#random_array' do
    it('generates an array') do
      expect(@timingFramework.random_array(10, 5)).to be_an_instance_of(Array)
    end
    it('generates an array of length equal to first argument') do
      expect(@timingFramework.random_array(10, 5).length).to eq 10
    end
  end
  describe '#create_sample_array' do
    it('generates an array') do
      expect(@timingFramework.create_sample_array(1, 10, 1)).to be_an_instance_of(Array)
    end
    it('creates an argument with the second element being the increment value longer than the previous') do
      element_count_difference = @timingFramework.create_sample_array(1, 10, 1)[4].length - @timingFramework.create_sample_array(1, 10, 1)[3].length
      expect(element_count_difference).to eq 1
    end
  end
  describe '#run_algo_timer' do
    it('returns an array') do
      expect(@timingFramework.run_algo_timer([1, 2, 3])).to be_an_instance_of(Array)
    end
  end
end