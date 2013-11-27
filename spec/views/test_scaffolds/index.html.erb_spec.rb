require 'spec_helper'

describe "test_scaffolds/index" do
  before(:each) do
    assign(:test_scaffolds, [
      stub_model(TestScaffold),
      stub_model(TestScaffold)
    ])
  end

  it "renders a list of test_scaffolds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
