Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end


  namespace :api do

    get "/shoes" => "shoes#index"
    get "shoes/:id" => 'shoes#show'
    post '/shoes' => "shoes#create"
    patch 'shoes/:id' => "shoes#update"
    delete 'shoes/:id' => "shoes#destroy"
  end

end
