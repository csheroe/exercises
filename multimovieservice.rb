movies = {}
puts "Welcome to the Micro Movie System!"
loop do
puts "Valid choices are add, update, display, delete, and exit"
choice = gets.chomp

case choice
    when "add"
    puts "What film would you like to add?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "How would you rate this film?"
	    rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "That film already exists in the MMS!"
    end

    when "update"
    puts "What film would you like to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
 		  puts "That film is not in the MMS!"
  	else
      puts "Please update rating"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end

    when "display"
    movies.each do |title, rating|
      puts "#{title}: #{rating}"
    end

    when "delete"
    puts "What movie would you like to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That movie is not in the MMS!"
    else
      puts movies.delete(title.to_sym)
      puts "#{title}: deleted, see score above"
    end

    when "exit"
    break

    else
    puts "Error, please put in a valid choice!"
    end
end
