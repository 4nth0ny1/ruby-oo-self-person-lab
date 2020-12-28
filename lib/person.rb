#       #happiness
##         a new person instance is initialized with a happiness index of 8
##         a person instance can change his/her happiness index
#         a person's happiness doesn't exceed 10 (FAILED - 1)
#         a person's happiness doesn't go below 0 (FAILED - 2)
#       #hygiene
##         a person instance is initialized with a hygiene index of 8
##        a person instance can change its hygiene index
#         a person instance's hygiene index cannot exceed 10 (FAILED - 3)
#         a person instance hygiene index cannot be less than 0 (FAILED - 4)
#   non-attribute instance methods
#     #happy?
#       returns true if happiness is greater than seven, else false (FAILED - 5)
#     #clean?
#       returns true if hygiene is greater than seven, else false (FAILED - 6)
#     #get_paid
#       accepts an argument of salary (FAILED - 7)
#       increments bank_account by the salary (FAILED - 8)
#       returns 'all about the benjamins' (FAILED - 9)
#     #take_bath
#       makes the person cleaner by 4 points (FAILED - 10)
#       returns a song (FAILED - 11)
#       can't make a person cleaner by 10 points (hint: use the custom #hygiene= method) (FAILED - 12)
#       calls on the #hygiene= method to increment hygiene (FAILED - 13)
#     #work_out
#       makes the person dirtier by 3 points (FAILED - 14)
#       never makes the person have negative dirty points
#         (hint: use the #hygiene= method) (FAILED - 15)
#       calls on the #hygiene= method to decrease hygiene (FAILED - 16)
#       makes the person happier by 2 points (FAILED - 17)
#       never makes the person have more than 10 happiness points
#         (hint: use the #happiness= method) (FAILED - 18)
#       calls on the #happiness= method to increment happiness (FAILED - 19)
#       returns Queen lyrics (FAILED - 20)
#     #call_friend
#       accepts one argument, an instance of the Person class (FAILED - 21)
#       makes the person calling happier by three points (FAILED - 22)
#       makes the friend happier by three points (FAILED - 23)
#       never makes the happiness of either party exceed 10
#         (hint: use the cutom #happiness= method) (FAILED - 24)
#       calls on the #happiness= method to increment happiness (FAILED - 25)
#       returns a string that reflects the caller's side of the conversation (FAILED - 26)
#     #start_conversation
#       accepts two arguments, a person to strike a convo with and a topic (FAILED - 27)
#       topic: politics
#         returns 'blah blah partisan blah lobbyist' if the topic is politics (FAILED - 28)
#         if topic is politics, it makes both people in the convo two points less happy (FAILED - 29)
#         never makes either party less than 0 points happy (never negative)
#           (hint: use your #happiness= method) (FAILED - 30)
#         calls on the #happiness= method (FAILED - 31)
#       topic: weather
#         returns 'blah blah sun blah rain' if the topic is weather (FAILED - 32)
#         if topic is weather, it makes both people in the convo one point more happy (FAILED - 33)
#         never makes either party more than 10 points happy
#           (hint: use your #happiness= method) (FAILED - 34)
#         calls on the #happiness= method (FAILED - 35)
#       topic: other
#         returns 'blah blah blah blah blah' if the topic is not politics or weather (FAILED - 36)
#         if topic is not politics or weather, it doesn't affect happiness (FAILED - 37)

class Person 
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(points)
        @happiness = points

        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end

   def hygiene=(points)
        @hygiene = points

        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
    end 

    def happy? 
        @happiness > 7 ? true : false 
    end 

    def clean? 
        @hygiene > 7 ? true : false
    end

    #     #get_paid
#       accepts an argument of salary (FAILED - 7)
#       increments bank_account by the salary (FAILED - 8)
#       returns 'all about the benjamins' (FAILED - 9)
# (5..10).inject {|sum, n| sum + n } 

def get_paid(salary)
    @bank_account += salary 
    return 'all about the benjamins'
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
    self.happiness+=3
    friend.happiness+=3
    "Hi #{friend.name}! It's #{@name}. How are you?"
end

def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness-=2
      self.happiness-=2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness+=1
      self.happiness+=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end

