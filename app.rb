require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reveresed = params[:name].reverse!
    "#{@reversed}"
  end

end
