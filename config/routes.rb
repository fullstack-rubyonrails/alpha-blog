Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
#--Previos Route [ Route 7 ]---------------------------------
#Prefix            | article
#Verb              | GET
#URI               | /articles/:id(.:format)
#Controller#Action | articles#show
#------------------------------------------------------------
  resources :articles, only: [:show]
#--New Route [ Route 3 ]-------------------------------------
#Prefix            | article
#Verb              | GET
#URI               | /articles/:id(.:format)
#Controller#Action | articles#show
#------------------------------------------------------------
end
