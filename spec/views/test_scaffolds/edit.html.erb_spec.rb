require 'spec_helper'

describe "test_scaffolds/edit" do
  before(:each) do
    @test_scaffold = assign(:test_scaffold, stub_model(TestScaffold))
  end

  it "renders the edit test_scaffold form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", test_scaffold_path(@test_scaffold), "post" do
    end
  end
end
