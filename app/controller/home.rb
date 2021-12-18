class PibApp < Sinatra::Base
  get '/' do
    erb :simple, :locals => {:message => 'Hello Home!'}
  end
end
