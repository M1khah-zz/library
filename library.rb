require 'yaml'
require_relative 'author'
require_relative 'reader'
require_relative 'order'
require_relative 'book'

class Library
  attr_accessor :books, :orders, :readers, :authors
  def initialize
    @orders = []
    @books = []
    @readers = []
    @authors = []
  end


  def top_reader
    @orders.group_by {|order| order.reader}.max_by {|_,orders| orders.count}
  end

  def most_popular_book
    @orders.group_by {|order| order.book.title}.max_by {|_,orders| orders.count}
  end

  def one_of_popular_books
    orders = @orders.group_by { |order| order.book}
    orders.sort_by { |order| order.size }.map { |x| x[1]}.flatten.map { |order| order.reader}.uniq.size
  end


  def save(file_name)
    File.open(file_name, 'a+') do |file|
      file.write(to_yaml)
      puts "Library data saved to #{file_name} file."
    end
  end

  def load_data(file_name)
    @books = YAML.load_file(file_name).books
    @orders = YAML.load_file(file_name).orders
    @readers = YAML.load_file(file_name).readers
    @authors = YAML.load_file(file_name).authors
    puts "Library data loaded from #{file_name}."
  end
end
