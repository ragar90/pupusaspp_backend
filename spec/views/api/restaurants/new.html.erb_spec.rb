require 'rails_helper'

RSpec.describe "api/restaurants/new", type: :view do
  before(:each) do
    assign(:api_restaurant, Api::Restaurant.new())
  end

  it "renders new api_restaurant form" do
    render

    assert_select "form[action=?][method=?]", api_restaurants_path, "post" do
    end
  end
end
