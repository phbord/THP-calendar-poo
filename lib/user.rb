class User
    attr_accessor :email, :age
    @@users = []

    def initialize(email, age)
        @email = email
        @age = age
    end

    def self.all
        return @@users
    end
end