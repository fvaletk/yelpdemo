require 'rails_helper'

RSpec.describe "restaurants/new", type: :view do
  before(:each) do
    assign(:restaurant, Restaurant.new(
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :website => "MyString"
    ))
  end

  it "renders new restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurants_path, "post" do

      assert_select "input#restaurant_name[name=?]", "restaurant[name]"

      assert_select "input#restaurant_address[name=?]", "restaurant[address]"

      assert_select "input#restaurant_phone[name=?]", "restaurant[phone]"

      assert_select "input#restaurant_website[name=?]", "restaurant[website]"
    end
  end
end
