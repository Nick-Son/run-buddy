require 'rails_helper'

RSpec.describe "messages/show", type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :conversation => nil,
      :content => "MyText",
      :from_profile_a => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
