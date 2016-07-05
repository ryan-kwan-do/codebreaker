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
  	  #should increment @computer_guess
  	end

  end
end