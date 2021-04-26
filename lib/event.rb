require 'time'

class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration, title, attendees)
        @start_date = start_date
        @duration = duration
        @title = title
        @attendees = attendees
    end

    def postpone_24h
        return @start_date = Time.parse(@start_date) + 24*60*60
    end

    def end_date
        return 
    end

    def is_past
    end

    def is_future
    end

    def is_soon
    end
end