require 'spec_helper'

describe "/dongles/edit.html.erb" do
  include DonglesHelper

  before(:each) do
    assigns[:dongle] = @dongle = stub_model(Dongle,
      :new_record? => false,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "renders the edit dongle form" do
    render

    response.should have_tag("form[action=#{dongle_path(@dongle)}][method=post]") do
      with_tag('input#dongle_name[name=?]', "dongle[name]")
      with_tag('input#dongle_description[name=?]', "dongle[description]")
    end
  end
end
