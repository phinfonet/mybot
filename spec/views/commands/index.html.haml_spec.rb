require 'spec_helper'

describe "commands/index" do
  before(:each) do
    assign(:commands, [
      stub_model(Command),
      stub_model(Command)
    ])
  end

  it "renders a list of commands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
