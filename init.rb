require_relative 'library'



library = Library.new
library.load_data('db.yml')


puts "The most popular book is #{library.most_popular_book}."
puts "Top reader is #{library.top_reader}."
puts "People ordered one of the three most popular books: #{library.one_of_popular_books}"

library.save 'results.yml'
