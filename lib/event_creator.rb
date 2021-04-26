class EventCreator
    attr_accessor :event_name, :event_date, :event_duration, :event_email

    def self.event_name_question
        puts "Salut, tu veux créer un événement ? Cool !"
        puts "Commençons. Quel est le nom de l'événement ?\n"
        print "> "
        @event_name = gets.chomp
        puts "#{@event_name} confirmé"
        return @event_name
    end

    def self.event_date_question
        puts "Super. Quand aura-t-il lieu ?\n"
        print "> "
        @event_date = gets.chomp
        puts "#{@event_date} confirmé"
        return @event_date
    end

    def self.event_duration_question
        puts "Au top. Combien de temps va-t-il durer (en minutes) ?\n"
        print "> "
        @event_duration = gets.chomp
        puts "#{@event_duration} confirmé"
        return @event_duration
    end

    def self.event_email_question
        puts "Génial. Qui va participer ? Balance leurs e-mails\n"
        print "> "
        @event_email = gets.chomp.split(', ')
        puts "#{@event_email} confirmé"
        return @event_email
    end

    def self.display_event_result
        puts "Super, c'est noté, ton évènement a été créé !"
    end
end