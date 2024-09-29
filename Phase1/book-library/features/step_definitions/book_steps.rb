require 'rest-client'
require 'json'

Given('Book {string} by {string} with ISBN number {string}') do |name, author, isbn|
  @book = { name: name, author: author, isbn: isbn }
end

When('I store the book in library') do
  response = RestClient.post 'http://localhost:4567/books/', @book.to_json, { content_type: :json }
  expect(response.code).to eq(201)
end

Then('I am able to retrieve the book by the ISBN number') do
  response = RestClient.get "http://localhost:4567/books/#{@book[:isbn]}"
  retrieved_book = JSON.parse(response.body)
  
  expect(retrieved_book["name"]).to eq(@book[:name])
  expect(retrieved_book["author"]).to eq(@book[:author])
  expect(retrieved_book["isbn"]).to eq(@book[:isbn])
end

