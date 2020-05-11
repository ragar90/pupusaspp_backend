require 'rails_helper'

RSpec.describe "api/menus/index", type: :view do
  before(:each) do
    assign(:api_menus, [
      Api::Menu.create!(),
      Api::Menu.create!()
    ])
  end

  it "renders a list of api/menus" do
    render
  end
end
