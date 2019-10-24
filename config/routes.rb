RedmineApp::Application.routes.draw do
  post 'issues/:issue_id/rating', to: 'issues#set_rating', as: 'set_rating'
end