require 'spec_helper'

describe "commands/show" do
  before(:each) do
    @command = assign(:command, stub_model(Command))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
