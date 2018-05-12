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

  # get '/say/:number/:phrase' do
  #   @number = params[:number].to_i
  #   @phrase = params[:phrase]
  #   i = 0;
  #   while i < @number
  #   puts @phrase
  #   i++
  # end

  get '/say/:word1/:word2/:word3/:word4/:word5'
  @string = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(' ')
  end

get '/:operation/:number1/:number2'
  @operation = params[:operation]
  @number1 = params[:number1]
  @number2 = params[:number2]
  
  if @operation == 'add'
    @answer = @number1.to_i + @number2.to_i
  elsif @operation == 'subtract'
      @answer = @number1.to_i - @number2.to_i
    elsif @operation == 'multiply'
        @answer = @number1.to_i * @number2.to_i
      else 
        @answer = @number1.to_i / @number2.to_i 
  end
  "#{@answer}" 
end 
#Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
end
