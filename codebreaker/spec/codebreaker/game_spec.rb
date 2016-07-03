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

    describe "#game_type" do
      context "codebreaker selects computer to play" do
        it "sends a message to codebreaker that ai starts" do
          game.game_type('y')
          s_output.should_receive(:puts).with('Here we go!')
        end
        it "creates a computer player" do
          game.game_type('y')
          game.start('1234')
          computer.first_guess == '1111'
        end
      end

      context 'codebreaker selects to play' do
        it "sends a message and prompts for guess" do
          s_output.should_receive(:puts).with('Enter guess:')
          game.game_type('n')
        end
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
