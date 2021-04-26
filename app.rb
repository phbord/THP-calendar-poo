require 'dotenv'
require 'pry'
require 'rspec'
require 'rubocop'
require './lib/event'
require './lib/user'
require './lib/event_creator'

#Dotenv.load('../.env')

#binding.pry

def perform
    puts "---------- USER ----------"
    jcvd = User.new("jcvd@baston.be", 32)
    saddam = User.new("saddam@irak.com", 32)
    puts jcvd.email
    puts saddam.email
    p User.all
    p User.find_by_email("saddam@irak.com")

    puts "\n---------- EVENT ----------"
    my_event = Event.new((Time.now + 20*60).round.to_s, 30, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
    puts "#{my_event.start_date} / #{my_event.duration} / #{my_event.title} / #{my_event.attendees}"
    puts my_event.postpone_24h
    puts my_event.end_date
    puts my_event.is_past?
    puts my_event.is_future?
    puts my_event.is_soon?

    puts "---------- EventCreator ----------"
    event_name = EventCreator.event_name_question
    event_date = EventCreator.event_date_question
    event_duration = EventCreator.event_duration_question
    event_emails = EventCreator.event_email_question
    EventCreator.display_event_result
    my_event = Event.new(event_date, event_duration, event_name, event_emails)
    puts "#{event_date} / #{event_duration} / #{event_name} / #{event_emails}"

    puts "\n---------- CalendarDisplayer ----------"
end

perform