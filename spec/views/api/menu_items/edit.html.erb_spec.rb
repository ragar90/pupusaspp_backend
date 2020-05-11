require 'rails_helper'

RSpec.describe "api/menu_items/edit", type: :view do
  before(:each) do
    @api_menu_item = assign(:api_menu_item, Api::MenuItem.create!())
  end

  it "renders the edit api_menu_item form" do
    render

    assert_select "form[action=?][method=?]", api_menu_item_path(@api_menu_item), "post" do
    end
  end
end
