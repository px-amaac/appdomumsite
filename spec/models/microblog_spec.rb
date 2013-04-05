require 'spec_helper'

let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is wrong!
    @microblog = user.microblog.build(header: "header" content: "Lorem ipsum")
  end

  subject { @microblog }

  it { should respond_to(:header) }
  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }
end
