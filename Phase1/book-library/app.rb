require 'sinatra'
require 'json'

# In-memory storage for books
BOOKS = {}

# POST endpoint to add a book
post '/books/' do
  content_type :json

  # Parse request body to get book details
  book = JSON.parse(request.body.read)
  
  # Store the book in memory using ISBN as key
  BOOKS[book["isbn"]] = book
  
  status 201
  book.to_json
end

# GET endpoint to retrieve a book by ISBN
get '/books/:isbn' do
  content_type :json

  # Find the book by ISBN
  book = BOOKS[params[:isbn]]
  
  if book
    book.to_json
  else
    status 404
    { error: "Book not found" }.to_json
  end
end

