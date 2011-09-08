require 'spec_helper'

describe "games/edit.html.erb" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :item1 => "MyText",
      :item2 => "MyText"
    ))
  end

  it "renders the edit game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path(@game), :method => "post" do
      assert_select "textarea#game_item1", :name => "game[item1]"
      assert_select "textarea#game_item2", :name => "game[item2]"
    end
  end
end
