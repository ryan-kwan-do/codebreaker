require 'spec_helper'
module Codebreaker
  describe 'Ai' do
	  let(:s_output) { double('s_output').as_null_object }
      let(:game) { Game.new(s_output) }

  	context 'AI makes first guess' do 
  	  it 'makes a guess of "1111"' do
  	  	game.select_ai == true
  	  	expect(game.guess).to eql('1111')
  	  end
  	end
  		
  	end
  end
