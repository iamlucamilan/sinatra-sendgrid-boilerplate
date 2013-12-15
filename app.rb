# app.rb
require 'sinatra'

get '/' do
  erb :index
end

post '/contact' do
  require 'pony'
  Pony.mail({
    :to => 'milan.luca@gmail.com',
    :via => :smtp,
    :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => 'milan.luca',
      :password             => 'Nqdce265123',
      :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
      :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
    }
  })
end