# your code goes here
class Person 
    attr_accessor :bank_account
    #attr_writer :name
    #attr_reader :name

    def initialize(instance_name)
        @name = instance_name
        self.bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def happiness=(happiness)
        if happiness > 0 &&  happiness <= 10
            @happiness = happiness
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = 10
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if hygiene > 0 &&  hygiene <= 10
            @hygiene = hygiene
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = 10
        end
    end

    def hygiene
        @hygiene
    end

    def clean?
        hygiene > 7 ? true : false
    end

    def happy?
        happiness > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account += amount 
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end

    end

end
        

