require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do

# code!
  @years = (1994..2016).to_a

  erb :years, layout: :main
end


get '/states' do
  # code!

  @states= ["New York", "Massachusetts", "Vermont", "Florida", "Connecticut"]
  @states.sort
  @states.sort!


  erb :states, layout: :main
end
