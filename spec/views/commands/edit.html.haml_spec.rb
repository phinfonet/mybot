require 'spec_helper'

describe "commands/edit" do
  before(:each) do
    @command = assign(:command, stub_model(Command))
  end

  it "renders the edit command form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commands_path(@command), :method => "post" do
    end
  end
end
