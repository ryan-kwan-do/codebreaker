module Codebreaker
  class Ai
  	def initialize(secret)
  	  @secret = secret
  	  @computer_guess = '1111'
  	end

  	def computer_guess
  	  @computer_guess
  	end

  	def guess_again
  	  #runs in bin/codebreaker until code is solved
  	  secret = @secret.split('')
  	  guess = @computer_guess.split('')
  	  guess.each_with_index do |number, index|
  	  	if number != secret[index]
  	  	  @computer_guess[index] = (number.to_i + 1).to_s
  	  	  break
  	  	end
  	  end
  	end

  end
end