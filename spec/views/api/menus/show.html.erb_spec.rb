require 'rails_helper'

RSpec.describe "api/menus/show", type: :view do
  before(:each) do
    @api_menu = assign(:api_menu, Api::Menu.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
