movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
puts "Enter input: "
choice = gets.chomp.downcase

case choice
  when "add"
    puts "Enter movie title: "
		title = gets.chomp
  	if movies[title.to_sym].nil?
  		puts "Enter movie rating (0 - 4): "
			rating = gets.chomp    
    	movies[title.to_sym] = rating.to_i
      puts "#{title} has been added with a rating of #{rating}."     
    else 
      puts "Movie already exists! Rating is #{movies[title.to_sym]}."
    end
  when "update"
  	puts "Enter movie to be updated: "
  	title = gets.chomp
  	if movies[title.to_sym].nil?
    	puts "Movie not found!"
  	else
    	puts "Enter new rating (0 - 4): "
    	rating = gets.chomp
    	movies[title.to_sym] = rating.to_i
    	puts "#{title} has been updated with new rating of #{rating}."
  	end
  when "display"
  	movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Enter movie to delete: "
  	title = gets.chomp
  	if movies[title.to_sym].nil?
    	puts "Movie not found!"
  	else
    	movies.delete(title.to_sym)
    	puts "#{title} removed."
  	end
	else
  	puts "Sorry, I didn't understand you."  
end