require 'spec_helper'

describe "commands/new" do
  before(:each) do
    assign(:command, stub_model(Command).as_new_record)
  end

  it "renders new command form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commands_path, :method => "post" do
    end
  end
end
