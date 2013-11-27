require 'spec_helper'

describe "test_scaffolds/new" do
  before(:each) do
    assign(:test_scaffold, stub_model(TestScaffold).as_new_record)
  end

  it "renders new test_scaffold form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", test_scaffolds_path, "post" do
    end
  end
end
