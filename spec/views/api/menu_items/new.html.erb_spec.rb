require 'rails_helper'

RSpec.describe "api/menu_items/new", type: :view do
  before(:each) do
    assign(:api_menu_item, Api::MenuItem.new())
  end

  it "renders new api_menu_item form" do
    render

    assert_select "form[action=?][method=?]", api_menu_items_path, "post" do
    end
  end
end
