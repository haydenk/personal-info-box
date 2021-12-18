class PibApp < Sinatra::Base
  get '/miriam' do
    erb :simple, :locals => {:message => 'I Love Miriam!'}
  end
end
