require 'rails_helper'

RSpec.describe "api/restaurants/index", type: :view do
  before(:each) do
    assign(:api_restaurants, [
      Api::Restaurant.create!(),
      Api::Restaurant.create!()
    ])
  end

  it "renders a list of api/restaurants" do
    render
  end
end
