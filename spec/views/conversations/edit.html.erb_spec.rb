require 'rails_helper'

RSpec.describe "conversations/edit", type: :view do
  before(:each) do
    @conversation = assign(:conversation, Conversation.create!(
      :profile_a => nil,
      :profile_b => nil
    ))
  end

  it "renders the edit conversation form" do
    render

    assert_select "form[action=?][method=?]", conversation_path(@conversation), "post" do

      assert_select "input[name=?]", "conversation[profile_a_id]"

      assert_select "input[name=?]", "conversation[profile_b_id]"
    end
  end
end
