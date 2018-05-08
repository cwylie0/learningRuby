class Dog
  def initialize(name,breed)
  	@name = name
    @breed = breed
  end

  public
  def bark
    puts "Woof!"
  end

  private
  def id
    @id_number = 12345
  end
end


# attr_accessor

class Person
  attr_accessor :name
  attr_accessor :job
end


# Feeling Included

class Angle
  include Math
  attr_accessor :radians

  def initialize(radians)
    @radians = radians
  end

  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine


# Imitating Multiple Inheritance

# Create your module here!
module MartialArts
  def swordsman
    puts "I'm a swordsman."
  end
end

class Ninja
	include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
	include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

# A Matter of Public Knowledge
class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status
    puts "All systems go!"
  end
end


#Private Affairs

class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status
    puts "All systems go!"
  end

  private
  def password
  	return 12345
  end

end


# Mixin for the Win

module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

class Master
	include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory
