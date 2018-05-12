require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse!
    "#{@reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    i = 0;
    while i < @number
    puts @phrase
    i++
  end

#'/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given.

#Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).

#Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
end
