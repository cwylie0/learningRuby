class Computer
  @@users = Hash.new

  def initialize(username, password)
    @files = Hash.new
    @username = username
    @password = password
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file created."
  end

  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("cwylie0", 33477)
