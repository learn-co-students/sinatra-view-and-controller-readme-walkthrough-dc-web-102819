require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    input_string = params['string']
    @reversed_string = input_string.reverse
    erb :reversed
  end

  get '/friends' do
    
    @friends = [ "miles", "Chris", "shelby", "courtney", "MIKE", "Malala Yousafzai"]
    erb :friends
  end
end