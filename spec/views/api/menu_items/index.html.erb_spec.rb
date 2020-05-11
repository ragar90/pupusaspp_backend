require 'rails_helper'

RSpec.describe "api/menu_items/index", type: :view do
  before(:each) do
    assign(:api_menu_items, [
      Api::MenuItem.create!(),
      Api::MenuItem.create!()
    ])
  end

  it "renders a list of api/menu_items" do
    render
  end
end
