
#require needed libraries
require 'sqlite3'

#BUSINESS LOGIC

class PolyglotQuotinator

  attr_reader :database
  attr_accessor :language

  def initialize(language)
    @language = language
    #create the database instance
    @database = SQLite3::Database.new( "polyglot_quotinator.db" )
    #set rows return type to hash
    @database.results_as_hash = true
  end

#create the books table if not already exist

#create the authors table if not already exist

#create the quotes table if not already exist

end

#TEST CODE
quotinator = PolyglotQuotinator.new("spanish")
p quotinator.language

#USER INTERFACE

#Present to the user the following possibilities:

  #1-add a book
  #2-add an author
  #3-add a quote
  #4-print a random quote

#retrieve the input result

#if the user input is 1
  #add the book to the database

#if the user input is 2
  #add the author to the database

#if the user input is 3
  #add the quote to the database

#if the user input is 4
  #print a random quote from the database

