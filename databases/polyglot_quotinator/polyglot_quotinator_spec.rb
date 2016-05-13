
require_relative 'polyglot_quotinator'

describe PolyglotQuotinator do

  let(:quotinator) { PolyglotQuotinator.new() }

  it "can add a book" do
    expect(quotinator.add_book).to eq true
  end

  it "can add a book" do
    expect(quotinator.add_book).to eq true
  end

  it "can add an author" do
    expect(quotinator.add_author).to eq true
  end

  it "can add a quote" do
    expect(quotinator.add_quote).to eq true
  end

  it "can get a random quote" do
    expect(quotinator.get_random_quote.class.name).to eq "String"
  end

end