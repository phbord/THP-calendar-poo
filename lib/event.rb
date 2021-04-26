require 'time'

class Event
    # duration : in minutes
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration, title, attendees)
        @start_date = start_date
        @duration = duration.to_i
        @title = title
        @attendees = attendees
    end

    def postpone_24h
        return @start_date = (Time.parse(@start_date) + 24*60*60).to_s
    end

    def end_date
        return (Time.parse(@start_date) + @duration*60).to_s
    end

    def is_past?
        start_date = Time.parse(@start_date)
        return true if start_date < Time.now
        return false
    end

    def is_future?
        return !is_past?
    end

    def is_soon?
        start_date = Time.parse(@start_date)
        soon_date = (Time.now + 30*60).round
        return true if (start_date > Time.now.round && start_date < soon_date)
        return false
    end
end