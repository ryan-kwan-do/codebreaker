require 'spec_helper'

module Codebreaker
  describe Game do 
        let(:s_output) { double('s_output').as_null_object }
        let(:game) { Game.new(s_output) }
     
    describe '#start' do
      it "sends a welcome message" do
        s_output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end
    end

    describe "#computer_plays" do
      it "sends a message to codebreaker that ai starts" do
        game.start('1234')
        s_output.should_receive(:puts).with('Here we go!')
        game.computer_plays
      end
      it "sends an output with the computer guess" do
        game.start('1234')
        s_output.should_receive(:puts).with('+')
        game.computer_plays
      end
    end 

    describe '#human_plays' do
      it "sends a message and prompts for guess" do
        s_output.should_receive(:puts).with('Enter guess:')
        game.human_plays
      end
    end

    describe '#guess' do
      it "sends a message to marker to output" do
        game.start('1234')
        s_output.should_receive(:puts).with('++++')
        game.guess('1234')
      end
    end    
  end
end
