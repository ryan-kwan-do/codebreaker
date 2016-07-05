require 'spec_helper'
module Codebreaker
  describe 'Ai' do
	  let(:s_output) { double('s_output').as_null_object }
      let(:game) { Game.new(s_output) }
      let(:computer) {Ai.new('2234')}

  	describe '#computer_guess' do
  	  context 'first guess' do
      	it 'makes a first guess of 1111' do
          game.start('2234')
          game.computer_plays
          expect(computer.computer_guess).to eql('1111')
        end
        it 'sends an output with value of the first guess' do
          game.start('2234')
          expect(s_output).to receive(:puts).with('1111')
          game.computer_plays
      	end
      	it 'shows result of the first guess in output' do
      	  game.start('2234')
      	  expect(s_output).to receive(:puts).with('')
      	  game.computer_plays
      	end
 	  end

      context 'computer guesses first number incorrectly' do
      	it 'increases the guess of the first digit by 1' do
      	  game.start('2234')
          game.computer_plays
          expect(computer.computer_guess).to eql('2111')
        end
      	it 'sends an output of the new guess' do
      	  game.start('2234')
          expect(s_output).to receive(:puts).with('2111')
          game.computer_plays
      	end
      	it 'shows result of the first guess in output' do
      	  game.start('2234')
      	  expect(s_output).to receive(:puts).with('+')
      	  game.computer_plays
      	end
      end
      context 'computer guesses a digit correctly'
    end  
  		
  	end
  end
