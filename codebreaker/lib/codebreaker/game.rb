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

    def game_type(selection)
      if selection == 'y' 
        @output.puts 'Here we go!'
        ai_guess('1111')
      else @output.puts 'Enter guess:'
      end
    end  

  	def guess(guess)
  	  marker = Marker.new(@secret, guess)
  	  @output.puts '+' * marker.exact_match_count.to_i + ('-' * marker.number_match_count.to_i)
  	end

    def ai_guess(ai_guess)
      guess(ai_guess)
    end

  end
end