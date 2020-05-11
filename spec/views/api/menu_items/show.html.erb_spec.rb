require 'rails_helper'

RSpec.describe "api/menu_items/show", type: :view do
  before(:each) do
    @api_menu_item = assign(:api_menu_item, Api::MenuItem.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
