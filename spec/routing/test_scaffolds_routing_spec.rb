require "spec_helper"

describe TestScaffoldsController do
  describe "routing" do

    it "routes to #index" do
      get("/test_scaffolds").should route_to("test_scaffolds#index")
    end

    it "routes to #new" do
      get("/test_scaffolds/new").should route_to("test_scaffolds#new")
    end

    it "routes to #show" do
      get("/test_scaffolds/1").should route_to("test_scaffolds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/test_scaffolds/1/edit").should route_to("test_scaffolds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/test_scaffolds").should route_to("test_scaffolds#create")
    end

    it "routes to #update" do
      put("/test_scaffolds/1").should route_to("test_scaffolds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/test_scaffolds/1").should route_to("test_scaffolds#destroy", :id => "1")
    end

  end
end
