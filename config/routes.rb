# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get '/projects/:project_id/issues/analyses', :to => 'issue_analyses#index', :as => 'issue_analyses'
end
