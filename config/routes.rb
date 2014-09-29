# Rails.application.routes.draw do
#   resources :articles
#   root to: 'articles#index'
#
#   resources :articles do
#     resources :comments
#   end
# end

Blogger::Application.routes.draw do

  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags

end
