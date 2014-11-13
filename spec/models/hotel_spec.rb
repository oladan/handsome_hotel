require 'spec_helper'
describe Hotel do
  
  let(:user) { FactoryGirl.create(:user) }
  before { @hotel = user.hotels.build(title: "Test hotel", 
                                      description: "Lorem ipsum test info", 
                                      breakfast: true) }
  
  subject { @hotel }
  
  it { should respond_to(:description) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }
  
  it { should be_valid }

  
end
