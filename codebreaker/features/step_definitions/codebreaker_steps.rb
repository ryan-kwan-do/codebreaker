class ShowOutput
  def messages
  	@messages ||= []
  end
  def puts(message)
  	messages << message
  end
end

def s_output 
  @output ||= ShowOutput.new
end

Given /^I am not yet playing$/  do
end

When /^I start a new game$/ do
  @messenger = StringIO.new	
  game = Codebreaker::Game.new(@messenger)
  game.start('1234')
end

Then /^Then I should see "([^"]*)"$/ do |message|
  expect(@messenger.string.split("\n")).to include(message)
end

Given /^the secret code is "([^"]*)"$/ do |secret|
  @game = Codebreaker::Game.new(s_output)
  @game.start(secret)
end

When /^I guess "([^"]*)"$/ do |guess|
  @game.guess(guess)
end

Then /^the mark should be "([^"]*)"$/ do |mark|
  expect(s_output.messages).to include(mark)
end