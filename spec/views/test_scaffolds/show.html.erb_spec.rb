require 'spec_helper'

describe "test_scaffolds/show" do
  before(:each) do
    @test_scaffold = assign(:test_scaffold, stub_model(TestScaffold))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
