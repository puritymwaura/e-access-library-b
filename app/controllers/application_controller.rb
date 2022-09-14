class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

 get '/books' do
    books = Book.all
    books.to_json
    end

  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json
  end

 # get book authors available

  get '/authors' do
    author = Author.all
    author.to_json

  end

  get '/authors/:id' do
    author = Author.find(params[:id])
    author.to_json
  end

  get '/customers' do
    customers = Customer.all
    customers.to_json
  end
 
  # patch request to make the new purchases

  patch '/books/:id' do
    patched_purchases = Book.find(params[:id])
    patched_purchases.update(
      purchase_title: params[:purchase_title], 
      customer_id: params[:customer_id],
      book_id: params[:book_id]
    )
    patched_purchases.to_json
    
  end
  # post request to make new purchases

  post '/books' do
    send_it = Book.create(
      title: params[:title],
      genre: params[:genre],
      price: params[:price]
    )
    send_it.to_json
  end
end