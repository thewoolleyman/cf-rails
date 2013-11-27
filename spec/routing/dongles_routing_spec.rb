require 'spec_helper'

describe DonglesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/dongles" }.should route_to(:controller => "dongles", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/dongles/new" }.should route_to(:controller => "dongles", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/dongles/1" }.should route_to(:controller => "dongles", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/dongles/1/edit" }.should route_to(:controller => "dongles", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/dongles" }.should route_to(:controller => "dongles", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/dongles/1" }.should route_to(:controller => "dongles", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/dongles/1" }.should route_to(:controller => "dongles", :action => "destroy", :id => "1") 
    end
  end
end
