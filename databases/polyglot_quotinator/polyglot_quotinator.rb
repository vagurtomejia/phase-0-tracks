
#require needed libraries
require 'sqlite3'
require 'faker'

#BUSINESS LOGIC

class PolyglotQuotinator

  attr_reader :database
  attr_accessor :language

  def initialize(language)
    @language = language

    #create the database instance
    @database = SQLite3::Database.new( "polyglot_quotinator.db" )

    #set rows return type to hash for the database
    @database.results_as_hash = true

    #create the books table if not already exist
    create_books_table

    #create the authors table if not already exist
    create_authors_table

    #create the quotes table if not already exist
    create_quotes_table

    #populate books, authors and quotes tables if needed
    #fake_populate_all_tables
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
      quote VARCHAR(500),
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

  def fake_populate_all_tables

    books_insert_query = "INSERT INTO books (title, language, pages_number, year, city_publication) VALUES (?, ?, ?, ?, ?)"

    5.times do
      @database.execute(books_insert_query, [Faker::Book.title, "ES", Faker::Number.between(1, 400), Faker::Number.between(1800, 2016), Faker::Address.city])
    end

    authors_insert_query = "INSERT INTO authors (first_name, last_name, gender, birthday, nationality) VALUES (?, ?, ?, ?, ?)"

    5.times do
      @database.execute(authors_insert_query, [Faker::Name.first_name, Faker::Name.last_name, Faker::Book.genre, Faker::Date.between(1800, 2000), "ecuadorian"])
    end

    quotes_insert_query = "INSERT INTO quotes (quote, from_page, to_page, from_line, to_line, subject, book_id, author_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

    5.times do
      @database.execute(quotes_insert_query, [Faker::Lorem.sentence(3,true), Faker::Number.between(1, 50), Faker::Number.between(51, 100), Faker::Number.between(0, 10), Faker::Number.between(10, 20), Faker::Lorem.word, Faker::Number.between(1, 5), Faker::Number.between(1, 5)])
    end
  end

  def get_random_quote

    quote = ""
    #quotes_select_id_query = "SELECT id FROM quotes;"
    quotes_select_id_query = "SELECT quotes.id FROM quotes JOIN books ON quotes.book_id = books.id WHERE books.language = ?"
    quotes_ids = @database.execute(quotes_select_id_query, [@language])
    if !quotes_ids.empty?
      id = quotes_ids.sample["id"]

      quote_select_by_id_query = "SELECT quote FROM quotes WHERE id = ?"
      result_quote = @database.execute(quote_select_by_id_query, [id])
      if !result_quote.empty?
        quote = result_quote[0]["quote"]
      end
    end
    quote
  end

end

#TEST CODE
quotinator = PolyglotQuotinator.new("ES")
puts quotinator.get_random_quote

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

