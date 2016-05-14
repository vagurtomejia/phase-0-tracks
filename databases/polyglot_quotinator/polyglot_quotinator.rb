
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

    #create the books table if not already exist
    create_books_table

    #create the authors table if not already exist
    create_authors_table

    #create the quotes table if not already exist
    create_quotes_table

    #populate books, authors and quotes tables
    #populate_all_tables

  end

  def create_books_table

    create_table_books_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS books (
      id INTEGER PRIMARY KEY,
      title VARCHAR(255),
      language VARCHAR(255),
      pages_number INT,
      year INT,
      city_publication VARCHAR(255)
    )
    SQL

    @database.execute(create_table_books_cmd)

  end

  def create_authors_table

    create_table_authors_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS authors (
      id INTEGER PRIMARY KEY,
      first_name VARCHAR(255),
      last_name VARCHAR(255),
      gender VARCHAR(255),
      birthday DATETIME,
      nationality VARCHAR(255)
    )
    SQL

    @database.execute(create_table_authors_cmd)

  end

  def create_quotes_table

    create_table_quotes_cmd = <<-SQL
      CREATE TABLE IF NOT EXISTS quotes (
      id INTEGER PRIMARY KEY,
      quote VARCHAR(255),
      from_page INT,
      to_page INT,
      from_line INT,
      to_line INT,
      subject VARCHAR(255),
      book_id INT,
      author_id INT,
      FOREIGN KEY (book_id) REFERENCES books (id),
      FOREIGN KEY (author_id) REFERENCES authors (id)
    )
    SQL

    @database.execute(create_table_quotes_cmd)

  end

  # def populate_all_tables


  # end


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

