require 'dotenv'
require 'pry'
require 'rspec'
require 'rubocop'
require './lib/event'
require './lib/user'

#Dotenv.load('../.env')

#binding.pry

def perform
    jcvd = User.new("jcvd@baston.be", 32)
    puts jcvd.email
    User.all

    my_event = Event.new("2019-01-23 12:03:14 +0100", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
    puts "#{my_event.start_date} / #{my_event.duration} / #{my_event.title} / #{my_event.attendees}"
    puts my_event.postpone_24h
end

perform