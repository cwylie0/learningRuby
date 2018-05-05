# Hash
matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each do |key, value|
  puts matz[key]
end

# Symbols
symbol_hash = {
  :one => 1,
  :two => 2,    # Fill in these two blanks!
  :three => 3
}


# Converting Between Symbols and strings
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!

symbols = []
strings.each do |s|
  symbols.push(s.to_sym)
end

print symbols



# Hash Rocket
movies = {
  :Logan => "Wolverine is an old man.",
  :Inception => "A dream within a dream.",
  :Thor => "The God of Thunder fights Loki."
  }

movies = {
  Logan: "Wolverine is an old man.",
  Inception: "A dream within a dream.",
  Thor: "The God of Thunder fights Loki."
  }

# Selecting
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

good_movies = movie_ratings.select { |movie,grade| grade > 3}


# More Methods & Solutions
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

movie_ratings.each_key { |title| puts title }
