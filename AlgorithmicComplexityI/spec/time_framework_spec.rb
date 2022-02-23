require 'timing_framework'

describe 'TimingFramework' do

  before(:each) do
    @timingFramework = TimingFramework.new;
  end
  describe '#random_array' do
    it('generates an array') do
      expect(@timingFramework.random_array(10, 5)).to be_an_instance_of(Array)
    end
  end
end