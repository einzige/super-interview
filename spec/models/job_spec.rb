require 'spec_helper'

describe Job do
  subject { described_class.create(developer: 'John Doe', started_on: started_on) }
  let(:started_on) { Date.today }

  it { should be_valid }
  its(:developer) { should == 'John Doe' }

  context "start date is not set" do
    let(:started_on) { nil }
    it { should_not be_valid }
  end
end
