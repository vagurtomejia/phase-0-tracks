
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

    languages = ["ES", "FR", "EN"]

    20.times do
      @database.execute(books_insert_query, [Faker::Book.title, languages.sample, Faker::Number.between(1, 400), Faker::Number.between(1800, 2016), Faker::Address.city])
    end

    authors_insert_query = "INSERT INTO authors (first_name, last_name, gender, birthday, nationality) VALUES (?, ?, ?, ?, ?)"

    20.times do
      @database.execute(authors_insert_query, [Faker::Name.first_name, Faker::Name.last_name, Faker::Book.genre, Faker::Date.between(1800, 2000), "ecuadorian"])
    end

    quotes_insert_query = "INSERT INTO quotes (quote, from_page, to_page, from_line, to_line, subject, book_id, author_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

    20.times do
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

  def insert_book (title, language, nbpages, year, location)

    books_insert_query = "INSERT INTO books (title, language, pages_number, year, city_publication) VALUES (?, ?, ?, ?, ?)"

    @database.execute(books_insert_query, [title, language, nbpages, year, location])

  end

  def insert_author (first_name, last_name, gender, birthday, nationality)

    authors_insert_query = "INSERT INTO authors (first_name, last_name, gender, birthday, nationality) VALUES (?, ?, ?, ?, ?)"

    @database.execute(authors_insert_query, [first_name, last_name, gender, birthday, nationality])

  end

  def insert_quote (quote, from_page, to_page, from_line, to_line, subject, book_id, author_id)

    quotes_insert_query = "INSERT INTO quotes (quote, from_page, to_page, from_line, to_line, subject, book_id, author_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

    @database.execute(quotes_insert_query, [quote, from_page, to_page, from_line, to_line, subject, book_id, author_id])

  end


  def populate_books_table

    books = [
              {title: "El Sendero Sagrado", language: "ES", pages_number: 133, year: 2004, city_publication: "Medellín, Colombia"},
              {title: "The surprising purpose of anger", language:"EN", pages_number: 44, year: 2005, city_publication: "United States of America"}
            ]
    books.each do |book|
      insert_book(book[:title], book[:language], book[:pages_number], book[:year], book[:location])

    end

  end

  def populate_authors_table

    authors = [
              {first_name: "Sant Kirpal", last_name: "Singh Ji Maharaj", gender: "spirituality", birthday: "18940206", nationality: "Indian"},
              {first_name: "Marshall B.", last_name: "Rosenberg, PH.D.", gender: "spirituality, communication", birthday: "19341006", nationality: "American"}
            ]
    authors.each do |author|
      insert_author(author[:first_name], author[:last_name], author[:gender], author[:birthday], author[:nationality])
    end

  end


  def populate_quotes_table

    quotes = [
              {quote: "Ahora que nuestro destino nos ha traido aqui, como podemos sacar el mejor provecho de la vida humana? No deberiamos plantar mas semillas. Cualquier cosa que suceda en la vida debido a acciones pasadas, deberia ser soportado con alegria. La felicidad y la desdicha vendran pero el discipulo nunca deberia sentirse descorazonado.", from_page: 102, to_page: 102, from_line: 3, to_line: 9, subject: "karma, discipulo, destino", book_id: 1, author_id: 1},
              {quote: "How I choose to look at that situation will greatly affect whether I have the power to change it or make matters worse.", from_page: 34, to_page: 34, from_line: 2, to_line: 4, subject: "NVC", book_id: 2, author_id: 2},
              {quote: "There's not a thing another person can do that can make us angry.", from_page: 34, to_page: 34, from_line: 5, to_line: 6, subject: "NVC", book_id: 2, author_id: 2},
              {quote: "I don't think we get angry because our need aren't getting met. I think we get angry because we have judgments about others.", from_page: 34, to_page: 34, from_line: 9, to_line: 11, subject: "NVC", book_id: 2, author_id: 2}
            ]
    quotes.each do |quote|
      insert_quote(quote[:quote], quote[:from_page], quote[:to_page], quote[:from_line], quote[:to_line], quote[:subject], quote[:book_id], quote[:author_id])

    end

  end

  def populate_all_tables

    populate_books_table
    populate_authors_table
    populate_quotes_table

  end

end

#TEST CODE
# quotinator = PolyglotQuotinator.new("EN")
# puts quotinator.get_random_quote

#USER INTERFACE

#Present to the user the following possibilities (to be implemented in future releases):

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


languages = ["ES", "FR", "EN"]

loop do

  puts "\nWhich is your language (ES, FR, EN or quit)?"
  user_language = gets.chomp
  break if user_language == "quit"
  if languages.include?(user_language)
    quotinator = PolyglotQuotinator.new("EN")
    random_quote = quotinator.get_random_quote #not working by language anymore - recent bug to fix
    puts "Here is your quote of the day: \n #{random_quote}"
  else
    puts "#{user_language} is not a valid language."
  end

end

