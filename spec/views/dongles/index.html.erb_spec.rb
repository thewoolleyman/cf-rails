require 'spec_helper'

describe "/dongles/index.html.erb" do
  include DonglesHelper

  before(:each) do
    assigns[:dongles] = [
      stub_model(Dongle,
        :name => "value for name",
        :description => "value for description"
      ),
      stub_model(Dongle,
        :name => "value for name",
        :description => "value for description"
      )
    ]
  end

  it "renders a list of dongles" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
  end
end
