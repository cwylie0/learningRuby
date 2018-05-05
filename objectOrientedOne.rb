class Language
    def initialize(name, creator)
      @name = name
      @creator = creator
    end
      
    def description
      puts "I'm #{@name} and I was created by #{@creator}!"
    end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")
  
ruby.description
python.description
javascript.description


# Naming Your Variables
class MyClass
    $my_variable = "Hello!"
end
  
puts $my_variable


# Twice the @, Twice as Classy
class Person
    # Set your class variable to 0 on line 3
    @@people_count = 0
    
    def initialize(name)
      @name = name
      # Increment your class variable on line 8
      @@people_count += 1
    end
    
    def self.number_of_instances
      # Return your class variable on line 13
      return @@people_count
    end
end
  
matz = Person.new("Yukihiro")
dhh = Person.new("David")
  
puts "Number of Person instances: #{Person.number_of_instances}"


# When Good isn't Good Enough
class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
end
  
# Add your code below!
class Dragon < Creature
    def fight
      puts "Instead of breathing fire..."
      super
    end
end
 

# Up, Up, and Away!
class Message
    @@messages_sent = 0
    def initialize(from, to)
      @from = from
      @to = to
      @@messages_sent += 1
    end
end
  
class Email < Message
    def initialize(from,to)
      super
    end
end
  
my_message = Message.new("cwylie0","World")