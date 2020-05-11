require 'rails_helper'

RSpec.describe "api/menus/edit", type: :view do
  before(:each) do
    @api_menu = assign(:api_menu, Api::Menu.create!())
  end

  it "renders the edit api_menu form" do
    render

    assert_select "form[action=?][method=?]", api_menu_path(@api_menu), "post" do
    end
  end
end
