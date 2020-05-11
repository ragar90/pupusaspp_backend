require 'rails_helper'

RSpec.describe "api/restaurants/show", type: :view do
  before(:each) do
    @api_restaurant = assign(:api_restaurant, Api::Restaurant.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
