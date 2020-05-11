require 'rails_helper'

RSpec.describe "api/restaurants/edit", type: :view do
  before(:each) do
    @api_restaurant = assign(:api_restaurant, Api::Restaurant.create!())
  end

  it "renders the edit api_restaurant form" do
    render

    assert_select "form[action=?][method=?]", api_restaurant_path(@api_restaurant), "post" do
    end
  end
end
