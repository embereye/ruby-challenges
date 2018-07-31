require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

account_sid = "XXXX"
auth_token = "XXX"

@client = Twilio::REST::Client.new(account_sid, auth_token)


#Magic 8 Ball object with array of answers
#This script doesn't quite work yet due to trying to find webhook in twilio. Revisit

class Magic8ball

  @@list_of_answers = ["It is certain", "Outlook good", "Ask again later", "Cannot predict now", "Don't count on it", "Outlook not so good"]

  def Magic8ball.shake
    puts @@list_of_answers[rand(5)]
  end
end



message = @client.messages.create(
  :from => "XXXX",
  :to => "XXXX",
  :body => "Ask a Yes/No Question!"
)

puts message.to

post '/message' do
  content_type 'text/xml'
  "<Response>
    <Message>
      #{Magic8ball.shake}
      </Message>
    </Response>"
end
