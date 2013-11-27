require 'spec_helper'

describe "/dongles/show.html.erb" do
  include DonglesHelper
  before(:each) do
    assigns[:dongle] = @dongle = stub_model(Dongle,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ description/)
  end
end
