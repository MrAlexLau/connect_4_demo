$LOAD_PATH << '.'
require 'game.rb'

describe Game, "#result" do
  it "is some text" do
    game = Game.new
    expect(game.result.length).to be > 0
  end
end
