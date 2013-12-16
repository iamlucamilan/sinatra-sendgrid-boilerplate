# app.rb

get '/' do
  erb :index
end

post '/contact' do
  Pony.mail({
    :to => 'milan.luca@gmail.com',
    :subject => 'Contatto da sito fabioegiuliasisposano.it',
    :body => "From #{params[:name]} - #{params[:email]}:  #{params[:text]}",
    :via => :smtp,
    # :via_options => {
    #   :address              => 'smtp.gmail.com',
    #   :port                 => '587',
    #   :enable_starttls_auto => true,
    #   :user_name            => 'scquizzatoconlacq',
    #   :password             => 'ottorino1957',
    #   :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    #   :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
    # },
    :from => "#{params[:email]}"
  })
end