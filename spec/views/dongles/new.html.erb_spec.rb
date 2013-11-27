require 'spec_helper'

describe "/dongles/new.html.erb" do
  include DonglesHelper

  before(:each) do
    assigns[:dongle] = stub_model(Dongle,
      :new_record? => true,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "renders new dongle form" do
    render

    response.should have_tag("form[action=?][method=post]", dongles_path) do
      with_tag("input#dongle_name[name=?]", "dongle[name]")
      with_tag("input#dongle_description[name=?]", "dongle[description]")
    end
  end
end
