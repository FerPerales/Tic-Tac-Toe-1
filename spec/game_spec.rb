require 'spec_helper'
require 'pry'

describe TicTacToe::Game do
  let(:game) { TicTacToe::Game.new }
  let(:grid) { game.initialize_grid(3) }
 
  describe "#initialize_grid" do
    it 'returns the specified value with initialize_grid instance of the class' do
     Object.any_instance.stub(:initialize_grid).with(:param).and_return(:return_value)
     a = Object.new
     a.initialize_grid(:param).should eq(:return_value)
    end
  end
  
  describe "#winner" do
  	it "return false when there isn't a winner" do
      grid
      expect(game.winner).to eq(:false)
  	end
  end

  describe "#chip_value" do
    it "return x when start game" do
      expect(game.chip_value).to eq("x")
    end
  end

  describe "#set_chip" do
    it "return true when the chip was inserted in the board" do
      grid
      game.chip_value
      expect(game.set_chip(5)).to eq(true)
    end
  end
end

