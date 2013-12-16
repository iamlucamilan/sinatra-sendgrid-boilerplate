# app.rb

get '/' do
  erb :index
end

post '/contact' do
  Pony.mail(
    :from => params[:name] + "<" + params[:email] + ">",
    :to => 'milan.luca@gmail.com',
    :subject => params[:name] + " ti ha scritto da giuliaefabiosisposano.it",
    :body => params[:message],
    :via => :smtp,
    :via_options => {
      :address              => 'smtp.sendgrid.net',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => ENV['SENDGRID_USERNAME'],
      :password             => ENV['SENDGRID_PASSWORD'],
      :authentication       => :plain,
      :domain               => ENV['SENDGRID_DOMAIN']
    })
end