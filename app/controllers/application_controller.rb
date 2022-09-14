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

 # get book genres available

  get '/genres' do
    genres = Genre.all
    genres.to_json

  end

  get '/genres/:id' do
    genres = Genre.find(params[:id])
  end

  get '/customers' do
    customers = Customer.all
    customers.to_json
  end

 # get purchases
  get '/purchases' do
    purchases = Purchase.all
    purchases.to_json
  end
  # patch request to make the new purchases
  patch '/purchases' do
    patched_purchases = Book.find(params[:id])
    patched_purchases.update(
      purchase_title: params[:purchase_title],
      customer_id: params[:customer_id],
      book_id: params[:book_id]
    )
    patched_purchases.to_json
  end


  # patch request to make the new purchases

  patch '/purchases/:id' do
    patched_purchases = Book.find(params[:id])
    patched_purchases.update(
      purchase_title: params[:purchase_title], 
      customer_id: params[:customer_id],
      book_id: params[:book_id]
    )
    patched_purchases.to_json
    
  end
  # post request to make new purchases

  post '/purchases' do
    purchases = Purchase.create(
      purchase_title: params[:purchase_title],
      customer_id: params[:customer_id],
      book_id: params[:book_id]
    )
  end
  post '/books' do
    send_it = Book.create(
      title: params[:title],
      genre: params[:genre],
      price: params[:price]
    )
    send_it.to_json
  end

  # delete to delete the purchases made
    delete '/purchases' do
    purchases = Purchase.create(
      purchase_title: params[:purchase_title],
      customer_id: params[:customer_id],
      book_id: params[:book_id]
    )
  end 
end