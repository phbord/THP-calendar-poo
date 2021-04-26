class User
    attr_accessor :email, :age
    @@users = []

    def initialize(email, age)
        @email = email
        @age = age
        @@users.push(@email)
    end

    def self.all
        return @@users
    end

    def self.find_by_email(email)
        return @@users.select { |user| user == email }
    end
end