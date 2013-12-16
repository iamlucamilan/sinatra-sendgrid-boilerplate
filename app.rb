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
    :via_options => {
        :address => 'smtp.sendgrid.net',
        :port => '587',
        :domain => 'heroku.com',
        :user_name => ENV['SENDGRID_USERNAME'],
        :password => ENV['SENDGRID_PASSWORD'],
        :authentication => :plain,
        :enable_starttls_auto => true
      }
    :from => "#{params[:email]}"
  })
end