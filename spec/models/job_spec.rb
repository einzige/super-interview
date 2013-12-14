require 'spec_helper'

describe Job do
  subject { described_class.create(developer: 'John Doe') }
  its(:developer) { should == 'John Doe' }
end
