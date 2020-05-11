require 'rails_helper'

RSpec.describe "api/menus/new", type: :view do
  before(:each) do
    assign(:api_menu, Api::Menu.new())
  end

  it "renders new api_menu form" do
    render

    assert_select "form[action=?][method=?]", api_menus_path, "post" do
    end
  end
end
