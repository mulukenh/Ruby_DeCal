Rails.application.routes.draw do
  get '/', to: 'entries#index'
  get '/new_cat', to: 'entries#new_cat'
  get '/new_todo', to: 'entries#new_todo'
  get '/new_user', to: 'entries#new_user'
  post '/new_cats', to: 'entries#create_cats'
  post '/new_todos', to: 'entries#create_todos'
  post '/new_users', to: 'entries#create_users'
  get '/show', to: 'entries#show'
end
