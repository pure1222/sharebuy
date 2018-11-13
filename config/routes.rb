Rails.application.routes.draw do
  get '/' => "home#top"
  get "home/share" => "home#share"
  post "home/create" => "home#create"
  get "home/description"=> "home#description"
  get "home/rule" => "home#rule"
  get "home/policy" => "home#policy"
  get "home/:id" => "home#confirm"
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
