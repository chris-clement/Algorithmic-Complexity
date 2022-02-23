require 'timing_framework'

describe 'TimingFramework' do

  before(:each) do
    @timingFramework = TimingFramework.new;
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
  end
end