module Codebreaker
  class Game
  	def initialize(output)
  	  @output = output
  	end

  	def start(secret)
  	  @secret = secret
  	  @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Would you like the computer to play for you?'
  	end

    def computer_plays 
        @output.puts 'Here we go!'
        computer_guess
    end

    def computer_guess
      guess('1111')
    end

    def human_plays
      @output.puts 'Enter guess:'
    end  

  	def guess(guess)
  	  marker = Marker.new(@secret, guess)
  	  @output.puts '+' * marker.exact_match_count.to_i + ('-' * marker.number_match_count.to_i)
  	end

  end
end